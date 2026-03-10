import { $, proofread, formatDate, nl2br, shiftLabel, formatKakaoDate } from './lib.js';
import { getSupabase } from './supabase.js';
import { addLocalChat, addLocalHandover, getLocalChat, getLocalHandovers, getLocalWork } from './local-store.js';

const SECTION_ORDER = ['물류','생산','공정','설비','품질','MES','공통','기타'];

export function getShiftTitle(shift){ return shift === 'N' ? '야간' : '주간'; }

export function getWorkCandidates(dateIso, shift, building){
  return getLocalWork().filter(row => {
    const rowDate = row.work_date || row.created_at?.slice(0,10);
    if (rowDate !== dateIso) return false;
    if (building && row.building && row.building !== building) return false;
    if (shift && row.shift_type && row.shift_type !== shift) return false;
    return row.include_in_handover;
  });
}

export function renderWorkCandidates(dateIso, shift, building){
  const list = getWorkCandidates(dateIso, shift, building);
  const root = $('#handover-work-list');
  root.innerHTML = list.map(row => `
    <label class="work-pick-item">
      <input type="checkbox" class="handover-work-check" value="${row.id}" checked />
      <div>
        <div class="work-pick-top"><strong>${row.category || '기타'}</strong><span>${row.line || '-'} / ${row.process || '-'}</span></div>
        <div class="work-pick-title">${row.title || '(제목 없음)'}</div>
        <div class="work-pick-note">${nl2br(row.note || '')}</div>
      </div>
    </label>`).join('') || '<div class="muted">해당 시간대에 인수인계 후보로 저장된 작업이 없습니다.</div>';
  $('#handover-picked-count').textContent = `${list.length}건 후보`;
  return list;
}

function dedupeRows(rows){
  const seen = new Set();
  return rows.filter(row => {
    const key = [row.category, row.title, row.line, row.process].join('|').toLowerCase();
    if (seen.has(key)) return false;
    seen.add(key);
    return true;
  });
}

export function buildHandoverDoc({ dateIso, shift='D', building='1동', author='-', rows=[], extra='' }){
  const groups = new Map();
  dedupeRows(rows).forEach(row => {
    const category = row.category || '기타';
    if (!groups.has(category)) groups.set(category, []);
    groups.get(category).push(row);
  });
  const sections = [];
  SECTION_ORDER.forEach(category => {
    const items = groups.get(category) || [];
    if (!items.length) return;
    const lines = [`■ ${category}`];
    items.forEach((row, idx) => {
      lines.push(`${idx+1}. ${proofread(row.title || row.note || '(제목 없음)')}`);
      const subs = [];
      if (row.line || row.process) subs.push(`${row.line || '-'} / ${row.process || '-'}`);
      if (row.location) subs.push(`위치: ${row.location}`);
      if (subs.length) lines.push(`- ${subs.join(' / ')}`);
      if (row.note) lines.push(`- ${proofread(row.note)}`);
      if (row.cause) lines.push(`- 원인: ${proofread(row.cause)}`);
      if (row.action) lines.push(`- 조치: ${proofread(row.action)}`);
      if (row.next_action) lines.push(`- 다음조 요청: ${proofread(row.next_action)}`);
    });
    sections.push(lines.join('\n'));
  });
  const doc = [`${dateIso} ${getShiftTitle(shift)} 공정 특이사항`, '', ...sections];
  if (extra.trim()) doc.push('', '■ 추가 전달사항', proofread(extra));
  doc.push('', `작성자: ${author} / 동: ${building}`);
  return doc.join('\n');
}

export function previewHandover(text){
  $('#handover-preview').innerHTML = nl2br(text);
}

export async function suggestFromChat(profile){
  const sb = getSupabase();
  let rows = [];
  if (sb) {
    const { data } = await sb.from('chat_messages').select('*').order('created_at', { ascending:false }).limit(50);
    rows = data || [];
  } else {
    rows = getLocalChat().slice(0,50);
  }
  return rows.slice(0,5).map(r => `${r.sender_name} / ${formatKakaoDate(r.created_at)}\n${r.body}`);
}

export function applySuggestions(lines){
  $('#handover-suggestions').innerHTML = lines.map(x => `<div class="suggestion-item">${nl2br(x)}</div>`).join('');
}

export async function saveHandover(profile, mode='save'){
  const dateIso = $('#handover-date').value || formatDate(new Date());
  const shift = $('#handover-shift').value || 'D';
  const building = $('#handover-building').value || profile.building || '1동';
  const checkedIds = Array.from(document.querySelectorAll('.handover-work-check:checked')).map(el => el.value);
  const rows = getLocalWork().filter(row => checkedIds.includes(row.id));
  const finalText = proofread($('#handover-final-text').value || buildHandoverDoc({
    dateIso,
    shift,
    building,
    author: profile.display_name,
    rows,
    extra: $('#handover-extra').value
  }));
  const payload = {
    author_id: profile.id,
    author_name: profile.display_name,
    building,
    shift_type: shift,
    work_date: dateIso,
    title: `${dateIso} ${getShiftTitle(shift)} 공정 특이사항`,
    body: finalText,
    selected_work_ids: checkedIds,
    send_to_chat: mode === 'send'
  };
  const sb = getSupabase();
  if (sb) {
    const result = await sb.from('handover_records').insert(payload).select().single();
    if (!result.error && mode === 'send') {
      await sb.from('chat_messages').insert({
        sender_id: profile.id,
        sender_name: profile.display_name,
        role: profile.role,
        body: finalText
      });
    }
    return result;
  }
  addLocalHandover(payload);
  if (mode === 'send') {
    addLocalChat({
      sender_id: profile.id,
      sender_name: profile.display_name,
      role: profile.role,
      body: finalText
    });
  }
  return { data: payload };
}

export function renderRecentHandovers(){
  const root = $('#handover-recent-list');
  const rows = getLocalHandovers().slice(0,5);
  root.innerHTML = rows.map(row => `<div class="recent-card"><strong>${row.title}</strong><div class="muted">${row.author_name} / ${row.building}</div><div class="recent-body">${nl2br((row.body || '').slice(0,240))}${(row.body || '').length > 240 ? '...' : ''}</div></div>`).join('') || '<div class="muted">최근 인수인계 없음</div>';
}

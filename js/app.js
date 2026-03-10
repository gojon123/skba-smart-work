import { $, $$, proofread, roleAllows, applyTheme, formatDate, nl2br } from './lib.js';
import { signIn, signOut, getSession, loadProfile, showAuthStatus, isDemoMode } from './auth.js';
import { renderCalendar, saveOverride, computeTeamView } from './calendar.js';
import { renderPay } from './pay.js';
import { loadChat, sendChat, subscribeChat } from './chat.js';
import { suggestFromChat, applySuggestions, saveHandover, renderWorkCandidates, buildHandoverDoc, previewHandover, renderRecentHandovers } from './handover.js';
import { runIntegratedSearch } from './search.js';
import { LINES, PROCESSES } from './constants.js';
import { addLocalWork, getSettings, saveSettings, getLocalWork } from './local-store.js';

let state = {
  lang: localStorage.getItem('skba_lang') || 'ko',
  session: null,
  profile: null,
  monthDate: new Date(),
  selectedDateIso: formatDate(new Date()),
  selectedShift: null,
  suggestionLines: [],
  settings: getSettings()
};

const CATEGORIES = ['물류','생산','공정','설비','품질','MES','공통','기타'];

function populateSelects(){
  const options = LINES.map(x=>`<option>${x}</option>`).join('');
  $('#work-line').innerHTML = options;
  const procOptions = PROCESSES.map(x=>`<option>${x}</option>`).join('');
  $('#work-process').innerHTML = procOptions;
  $('#setting-language').value = state.lang;
  $('#setting-theme').value = state.settings.theme || 'blue';
  $('#setting-translation').value = state.settings.translation || 'off';
  $('#handover-date').value = formatDate(new Date());
  $('#handover-building').value = '1동';
  $('#handover-shift').value = 'D';
  $('#work-date').value = formatDate(new Date());
  $('#work-shift').value = 'D';
  $('#work-building').value = '1동';
  $('#work-category').innerHTML = CATEGORIES.map(x => `<option>${x}</option>`).join('');
}
function applyRoleUI(){
  $('#top-user-name').textContent = state.profile?.display_name || '-';
  $('#top-role').textContent = state.profile?.role || '-';
  $('#mode-badge').textContent = isDemoMode() ? 'Local' : 'Live';
  $$('.role-extra').forEach(btn => btn.classList.toggle('hidden', !roleAllows(state.profile?.role, btn.dataset.tab)));
}
function renderTeamBox(targetDate){
  const team = computeTeamView(targetDate, state.profile);
  $('#team-pattern-box').innerHTML = team.map(t=>`<div class="team-line compact"><span>${t.crew}</span> <span class="shift-badge mini ${t.shift==='D'?'day':t.shift==='N'?'night':'off'}">${t.shift==='D'?'주간':t.shift==='N'?'야간':'휴무'}</span></div>`).join('');
}
function renderWorkList(){
  const rows = getLocalWork().slice(0,12);
  $('#work-recent-list').innerHTML = rows.map(row => `<div class="recent-card">
      <div class="recent-top"><strong>${row.category || '기타'}</strong><span>${row.work_date || '-'}</span></div>
      <div><strong>${row.title || '(제목 없음)'}</strong></div>
      <div class="muted">${row.line || '-'} / ${row.process || '-'} / ${row.shift_type === 'N' ? '야간' : '주간'} / ${row.include_in_handover ? '인수인계 포함' : '작업만 저장'}</div>
      <div class="recent-body">${nl2br((row.note || '').slice(0,220))}${(row.note || '').length > 220 ? '...' : ''}</div>
    </div>`).join('') || '<div class="muted">최근 작업 기록 없음</div>';
}
async function refreshMain(){
  applyRoleUI();
  renderTeamBox(state.selectedDateIso ? new Date(state.selectedDateIso) : new Date());
  await renderCalendar(state.profile, state.monthDate, ({ date, iso, shift }) => {
    state.selectedDateIso = iso;
    state.selectedShift = shift;
    $('#edit-date-title').textContent = `${iso} 근무 수정`;
    $('#calendar-edit-box').classList.remove('hidden');
    $('#calendar-selected-date').textContent = iso;
    renderTeamBox(date);
    $$('.shift-btn').forEach(x=>x.classList.toggle('active', x.dataset.shift === shift));
  }, state.selectedDateIso);
  await renderPay(state.profile, state.monthDate);
  renderWorkList();
  renderRecentHandovers();
  if (roleAllows(state.profile.role, 'chat')) {
    await loadChat(state.lang, state.profile.id, state.settings.translation === 'on');
  }
}
function openMain(){ $('#login-screen').classList.add('hidden'); $('#main-screen').classList.remove('hidden'); }
function openLogin(){ $('#main-screen').classList.add('hidden'); $('#login-screen').classList.remove('hidden'); }
function switchTab(tabName){
  if (!roleAllows(state.profile?.role, tabName)) return;
  $$('.tab-btn').forEach(x=>x.classList.toggle('active', x.dataset.tab === tabName));
  $$('.tab').forEach(x=>x.classList.add('hidden'));
  $('#tab-'+tabName).classList.remove('hidden');
  if (tabName === 'handover') rebuildHandoverDraft();
}
function applyCurrentSettings(){
  localStorage.setItem('skba_lang', state.lang);
  applyTheme(state.settings.theme || 'blue');
}
function resetWorkForm(){
  $('#work-title').value = '';
  $('#work-location').value = '';
  $('#work-note').value = '';
  $('#work-cause').value = '';
  $('#work-action').value = '';
  $('#work-next-action').value = '';
  $('#work-include-handover').checked = true;
}
function rebuildHandoverDraft(){
  const rows = renderWorkCandidates($('#handover-date').value, $('#handover-shift').value, $('#handover-building').value);
  const checkedIds = Array.from(document.querySelectorAll('.handover-work-check:checked')).map(el => el.value);
  const selectedRows = rows.filter(row => checkedIds.includes(row.id));
  const text = buildHandoverDoc({
    dateIso: $('#handover-date').value,
    shift: $('#handover-shift').value,
    building: $('#handover-building').value,
    author: state.profile?.display_name || '-',
    rows: selectedRows,
    extra: $('#handover-extra').value
  });
  $('#handover-final-text').value = text;
  previewHandover(text);
}

async function bootstrap(){
  populateSelects();
  applyCurrentSettings();
  $$('.lang-btn').forEach(btn => btn.classList.toggle('active', btn.dataset.lang === state.lang));
  if (isDemoMode()) showAuthStatus('로컬 모드 - demo 계정으로 로그인 후 사용');
  const session = await getSession();
  if (session?.user){
    state.session = session;
    state.profile = await loadProfile(session.user.id);
    if (state.profile){ openMain(); await refreshMain(); subscribeChat(()=>loadChat(state.lang, state.profile.id, state.settings.translation === 'on')); }
  } else {
    openLogin();
  }
}

$('#login-btn').addEventListener('click', async ()=>{
  const { data, error } = await signIn($('#login-email').value, $('#login-password').value);
  if (error) return showAuthStatus(error.message);
  state.session = data.session;
  state.profile = await loadProfile(data.user.id);
  if (!state.profile) return showAuthStatus('profiles 테이블에 사용자 정보가 없습니다.');
  $('#logout-btn').classList.remove('hidden');
  openMain();
  switchTab('calendar');
  await refreshMain();
  subscribeChat(()=>loadChat(state.lang, state.profile.id, state.settings.translation === 'on'));
  showAuthStatus('');
});
$('#logout-btn').addEventListener('click', async ()=>{ await signOut(); state.session = null; state.profile = null; openLogin(); });
$$('.lang-btn').forEach(btn => btn.addEventListener('click', ()=>{ state.lang = btn.dataset.lang; $$('.lang-btn').forEach(x=>x.classList.toggle('active', x===btn)); $('#setting-language').value = state.lang; if(state.profile) refreshMain(); applyCurrentSettings(); }));
$$('.tab-btn').forEach(btn => btn.addEventListener('click', ()=>switchTab(btn.dataset.tab)));
$('#open-settings').addEventListener('click', ()=>$('#settings-panel').classList.remove('hidden'));
$('#close-settings').addEventListener('click', ()=>$('#settings-panel').classList.add('hidden'));
$('#setting-language').addEventListener('change', async e=>{ state.lang=e.target.value; applyCurrentSettings(); if(state.profile) await refreshMain(); });
$('#setting-theme').addEventListener('change', e=>{ state.settings.theme=e.target.value; saveSettings(state.settings); applyCurrentSettings(); });
$('#setting-translation').addEventListener('change', async e=>{ state.settings.translation=e.target.value; saveSettings(state.settings); if(state.profile) await refreshMain(); });
$('#prev-month').addEventListener('click', async ()=>{ state.monthDate = new Date(state.monthDate.getFullYear(), state.monthDate.getMonth()-1, 1); await refreshMain(); });
$('#next-month').addEventListener('click', async ()=>{ state.monthDate = new Date(state.monthDate.getFullYear(), state.monthDate.getMonth()+1, 1); await refreshMain(); });
$('#save-shift-btn').addEventListener('click', async ()=>{ const btn = document.querySelector('.shift-btn.active'); if(!btn||!state.selectedDateIso) return; const { error } = await saveOverride(state.profile.id, state.selectedDateIso, btn.dataset.shift); $('#calendar-edit-status').textContent = error ? error.message : '저장 완료'; if(!error) refreshMain(); });
$$('.shift-btn').forEach(btn=>btn.addEventListener('click', ()=>$$('.shift-btn').forEach(x=>x.classList.toggle('active', x===btn))));
$('#recalc-pay').addEventListener('click', ()=>renderPay(state.profile, state.monthDate));
$('#chat-proofread').addEventListener('click', ()=>$('#chat-input').value = proofread($('#chat-input').value));
$('#refresh-chat').addEventListener('click', ()=>loadChat(state.lang, state.profile.id, state.settings.translation === 'on'));
$('#toggle-chat-translation').addEventListener('click', async ()=>{
  state.settings.translation = state.settings.translation === 'on' ? 'off' : 'on';
  $('#setting-translation').value = state.settings.translation;
  saveSettings(state.settings);
  await loadChat(state.lang, state.profile.id, state.settings.translation === 'on');
});
$('#send-chat').addEventListener('click', async ()=>{ const body=$('#chat-input').value.trim(); if(!body) return; const { error } = await sendChat(state.profile, body); if(!error){ $('#chat-input').value=''; loadChat(state.lang, state.profile.id, state.settings.translation === 'on'); } });
$('#work-proofread').addEventListener('click', ()=>{
  $('#work-title').value = proofread($('#work-title').value);
  $('#work-note').value = proofread($('#work-note').value);
  $('#work-cause').value = proofread($('#work-cause').value);
  $('#work-action').value = proofread($('#work-action').value);
  $('#work-next-action').value = proofread($('#work-next-action').value);
  $('#work-status').textContent = '문장 정리 완료';
});
$('#work-save').addEventListener('click', ()=>{
  const payload = {
    work_date: $('#work-date').value,
    shift_type: $('#work-shift').value,
    building: $('#work-building').value,
    category: $('#work-category').value,
    line: $('#work-line').value,
    process: $('#work-process').value,
    location: proofread($('#work-location').value),
    title: proofread($('#work-title').value),
    note: proofread($('#work-note').value),
    cause: proofread($('#work-cause').value),
    action: proofread($('#work-action').value),
    next_action: proofread($('#work-next-action').value),
    include_in_handover: $('#work-include-handover').checked,
    author: state.profile?.display_name || 'user'
  };
  if (!payload.title && !payload.note) { $('#work-status').textContent = '제목 또는 내용을 입력해 주세요.'; return; }
  addLocalWork(payload);
  $('#work-status').textContent = payload.include_in_handover ? '저장 완료 / 인수인계 후보 반영' : '저장 완료';
  renderWorkList();
  renderRecentHandovers();
  resetWorkForm();
});
$('#handover-proofread').addEventListener('click', ()=>{ $('#handover-extra').value = proofread($('#handover-extra').value); $('#handover-final-text').value = proofread($('#handover-final-text').value); previewHandover($('#handover-final-text').value); $('#handover-status').textContent = '문장 정리 완료'; });
$('#handover-suggest').addEventListener('click', async ()=>{ state.suggestionLines = await suggestFromChat(state.profile); applySuggestions(state.suggestionLines); $('#handover-status').textContent='최근 채팅 참고문장 표시 완료'; });
$('#handover-build').addEventListener('click', rebuildHandoverDraft);
$('#handover-save').addEventListener('click', async ()=>{ const { error } = await saveHandover(state.profile, 'save'); $('#handover-status').textContent = error ? error.message : '저장 완료'; renderRecentHandovers(); });
$('#handover-send').addEventListener('click', async ()=>{ const { error } = await saveHandover(state.profile, 'send'); $('#handover-status').textContent = error ? error.message : '채팅 전송 완료'; renderRecentHandovers(); });
$('#run-search').addEventListener('click', ()=>runIntegratedSearch($('#search-query').value, state.lang));
['#handover-date','#handover-shift','#handover-building'].forEach(sel => $(sel).addEventListener('change', rebuildHandoverDraft));
$('#handover-extra').addEventListener('input', rebuildHandoverDraft);
document.addEventListener('change', e => { if (e.target.matches('.handover-work-check')) rebuildHandoverDraft(); });

bootstrap();

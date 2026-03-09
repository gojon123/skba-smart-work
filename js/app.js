import { $, $$, proofread, roleAllows } from './lib.js';
import { signIn, signOut, getSession, loadProfile, showAuthStatus, isDemoMode } from './auth.js';
import { renderCalendar, saveOverride, computeTeamView } from './calendar.js';
import { renderPay } from './pay.js';
import { loadChat, sendChat, subscribeChat } from './chat.js';
import { suggestFromChat, applySuggestions, saveHandover } from './handover.js';
import { runIntegratedSearch } from './search.js';
import { LINES, PROCESSES } from './constants.js';

let state = {
  lang: localStorage.getItem('skba_lang') || 'ko',
  session: null,
  profile: null,
  monthDate: new Date(),
  selectedDateIso: null,
  suggestionLines: []
};

function populateSelects(){
  $('#handover-line').innerHTML = LINES.map(x=>`<option>${x}</option>`).join('');
  $('#handover-process').innerHTML = PROCESSES.map(x=>`<option>${x}</option>`).join('');
  $('#setting-language').value = state.lang;
}
function applyRoleUI(){
  $('#top-user-name').textContent = state.profile?.display_name || '-';
  $('#top-role').textContent = state.profile?.role || '-';
  $$('.role-extra').forEach(btn => btn.classList.toggle('hidden', !roleAllows(state.profile?.role, btn.dataset.tab)));
}
async function refreshMain(){
  applyRoleUI();
  const team = computeTeamView(new Date());
  $('#team-pattern-box').innerHTML = team.map(t=>`<div class="team-line"><span>${t.crew}조</span> <span class="${t.shift==='D'?'day':t.shift==='N'?'night':'off'}">${t.shift}</span></div>`).join('');
  await renderCalendar(state.profile, state.monthDate, ({ iso }) => {
    state.selectedDateIso = iso;
    $('#edit-date-title').textContent = `${iso} 근무 수정`;
    $('#calendar-edit-box').classList.remove('hidden');
  });
  await renderPay(state.profile, state.monthDate);
  if (roleAllows(state.profile.role, 'chat')) await loadChat(state.lang);
}
function openMain(){ $('#login-screen').classList.add('hidden'); $('#main-screen').classList.remove('hidden'); }
function openLogin(){ $('#main-screen').classList.add('hidden'); $('#login-screen').classList.remove('hidden'); }
async function bootstrap(){
  populateSelects();
  $$('.lang-btn').forEach(btn => btn.classList.toggle('active', btn.dataset.lang === state.lang));
  if (isDemoMode()) showAuthStatus('데모 모드 사용 가능 - engineer@skba.local / 1234');
  const session = await getSession();
  if (session?.user){
    state.session = session;
    state.profile = await loadProfile(session.user.id);
    if (state.profile){ openMain(); await refreshMain(); subscribeChat(()=>loadChat(state.lang)); }
  }
}

$('#login-btn').addEventListener('click', async ()=>{
  const { data, error } = await signIn($('#login-email').value, $('#login-password').value);
  if (error) return showAuthStatus(error.message);
  state.session = data.session;
  state.profile = await loadProfile(data.user.id);
  if (!state.profile) return showAuthStatus('profiles 테이블에 사용자 정보가 없습니다.');
  openMain(); await refreshMain(); subscribeChat(()=>loadChat(state.lang)); showAuthStatus('');
});
$('#logout-btn').addEventListener('click', async ()=>{ await signOut(); openLogin(); });
$$('.lang-btn').forEach(btn => btn.addEventListener('click', ()=>{ state.lang = btn.dataset.lang; localStorage.setItem('skba_lang', state.lang); $$('.lang-btn').forEach(x=>x.classList.toggle('active', x===btn)); $('#setting-language').value = state.lang; if(state.profile) refreshMain(); }));
$$('.tab-btn').forEach(btn => btn.addEventListener('click', ()=>{
  if (!roleAllows(state.profile?.role, btn.dataset.tab)) return;
  $$('.tab-btn').forEach(x=>x.classList.toggle('active', x===btn));
  $$('.tab').forEach(x=>x.classList.add('hidden')); $('#tab-'+btn.dataset.tab).classList.remove('hidden');
}));
$('#open-settings').addEventListener('click', ()=>$('#settings-panel').classList.remove('hidden'));
$('#close-settings').addEventListener('click', ()=>$('#settings-panel').classList.add('hidden'));
$('#setting-language').addEventListener('change', e=>{ state.lang=e.target.value; localStorage.setItem('skba_lang', state.lang); if(state.profile) refreshMain(); });
$('#prev-month').addEventListener('click', async ()=>{ state.monthDate = new Date(state.monthDate.getFullYear(), state.monthDate.getMonth()-1, 1); await refreshMain(); });
$('#next-month').addEventListener('click', async ()=>{ state.monthDate = new Date(state.monthDate.getFullYear(), state.monthDate.getMonth()+1, 1); await refreshMain(); });
$('#save-shift-btn').addEventListener('click', async ()=>{ const btn = document.querySelector('.shift-btn.active'); if(!btn||!state.selectedDateIso) return; const { error } = await saveOverride(state.profile.id, state.selectedDateIso, btn.dataset.shift); $('#calendar-edit-status').textContent = error ? error.message : '저장 완료'; if(!error) refreshMain(); });
$$('.shift-btn').forEach(btn=>btn.addEventListener('click', ()=>$$('.shift-btn').forEach(x=>x.classList.toggle('active', x===btn))));
$('#recalc-pay').addEventListener('click', ()=>renderPay(state.profile, state.monthDate));
$('#chat-proofread').addEventListener('click', ()=>$('#chat-input').value = proofread($('#chat-input').value));
$('#send-chat').addEventListener('click', async ()=>{ const body=$('#chat-input').value.trim(); if(!body) return; const { error } = await sendChat(state.profile, body); if(!error){ $('#chat-input').value=''; loadChat(state.lang); } });
$('#handover-proofread').addEventListener('click', ()=>{ ['phenomenon','cause','action'].forEach(k=>{ const id='#handover-'+k; $(id).value=proofread($(id).value); }); });
$('#handover-suggest').addEventListener('click', async ()=>{ state.suggestionLines = await suggestFromChat(state.profile); $('#handover-status').textContent='추천 문장 생성 완료'; });
$('#handover-save').addEventListener('click', async ()=>{ if (state.suggestionLines.length) applySuggestions(state.suggestionLines); const { error } = await saveHandover(state.profile, 'save'); $('#handover-status').textContent = error ? error.message : '저장 완료'; });
$('#handover-send').addEventListener('click', async ()=>{ if (state.suggestionLines.length) applySuggestions(state.suggestionLines); const { error } = await saveHandover(state.profile, 'send'); $('#handover-status').textContent = error ? error.message : '전송 완료'; });
$('#run-search').addEventListener('click', ()=>runIntegratedSearch($('#search-query').value, state.lang));

bootstrap();

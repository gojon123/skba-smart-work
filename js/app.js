import { $, $$, proofread, roleAllows, applyTheme } from './lib.js';
import { signIn, signOut, getSession, loadProfile, showAuthStatus, isDemoMode } from './auth.js';
import { renderCalendar, saveOverride, computeTeamView } from './calendar.js';
import { renderPay } from './pay.js';
import { loadChat, sendChat, subscribeChat } from './chat.js';
import { suggestFromChat, applySuggestions, saveHandover } from './handover.js';
import { runIntegratedSearch } from './search.js';
import { LINES, PROCESSES } from './constants.js';
import { addLocalWork, getSettings, saveSettings } from './local-store.js';

let state = {
  lang: localStorage.getItem('skba_lang') || 'ko',
  session: null,
  profile: null,
  monthDate: new Date(),
  selectedDateIso: null,
  selectedShift: null,
  suggestionLines: [],
  settings: getSettings()
};

function populateSelects(){
  const options = LINES.map(x=>`<option>${x}</option>`).join('');
  $('#handover-line').innerHTML = options;
  $('#work-line').innerHTML = options;
  const procOptions = PROCESSES.map(x=>`<option>${x}</option>`).join('');
  $('#handover-process').innerHTML = procOptions;
  $('#work-process').innerHTML = procOptions;
  $('#setting-language').value = state.lang;
  $('#setting-theme').value = state.settings.theme || 'blue';
  $('#setting-translation').value = state.settings.translation || 'off';
}
function applyRoleUI(){
  $('#top-user-name').textContent = state.profile?.display_name || '-';
  $('#top-role').textContent = state.profile?.role || '-';
  $('#mode-badge').textContent = isDemoMode() ? 'Demo' : 'Live';
  $$('.role-extra').forEach(btn => btn.classList.toggle('hidden', !roleAllows(state.profile?.role, btn.dataset.tab)));
}
async function refreshMain(){
  applyRoleUI();
  const team = computeTeamView(new Date());
  $('#team-pattern-box').innerHTML = team.map(t=>`<div class="team-line"><span>${t.crew}조</span> <span class="${t.shift==='D'?'day':t.shift==='N'?'night':'off'}">${t.shift}</span></div>`).join('');
  await renderCalendar(state.profile, state.monthDate, ({ iso, shift }) => {
    state.selectedDateIso = iso;
    state.selectedShift = shift;
    $('#edit-date-title').textContent = `${iso} 근무 수정`;
    $('#calendar-edit-box').classList.remove('hidden');
    $$('.shift-btn').forEach(x=>x.classList.toggle('active', x.dataset.shift === shift));
  }, state.selectedDateIso);
  await renderPay(state.profile, state.monthDate);
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
}
function applyCurrentSettings(){
  localStorage.setItem('skba_lang', state.lang);
  applyTheme(state.settings.theme || 'blue');
}
async function bootstrap(){
  populateSelects();
  applyCurrentSettings();
  $$('.lang-btn').forEach(btn => btn.classList.toggle('active', btn.dataset.lang === state.lang));
  if (isDemoMode()) showAuthStatus('데모 모드 사용 가능 - engineer@skba.local / 1234');
  const session = await getSession();
  if (session?.user){
    state.session = session;
    state.profile = await loadProfile(session.user.id);
    if (state.profile){ openMain(); await refreshMain(); subscribeChat(()=>loadChat(state.lang, state.profile.id, state.settings.translation === 'on')); }
  }
}

$('#login-btn').addEventListener('click', async ()=>{
  const { data, error } = await signIn($('#login-email').value, $('#login-password').value);
  if (error) return showAuthStatus(error.message);
  state.session = data.session;
  state.profile = await loadProfile(data.user.id);
  if (!state.profile) return showAuthStatus('profiles 테이블에 사용자 정보가 없습니다.');
  openMain();
  switchTab('calendar');
  await refreshMain();
  subscribeChat(()=>loadChat(state.lang, state.profile.id, state.settings.translation === 'on'));
  showAuthStatus('');
});
$('#logout-btn').addEventListener('click', async ()=>{ await signOut(); openLogin(); });
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
$('#handover-proofread').addEventListener('click', ()=>{ ['location','phenomenon','cause','action'].forEach(k=>{ const id='#handover-'+k; if($(id)) $(id).value=proofread($(id).value); }); });
$('#handover-suggest').addEventListener('click', async ()=>{ state.suggestionLines = await suggestFromChat(state.profile); applySuggestions(state.suggestionLines); $('#handover-status').textContent='추천 문장 생성 완료'; });
$('#handover-save').addEventListener('click', async ()=>{ const { error } = await saveHandover(state.profile, 'save'); $('#handover-status').textContent = error ? error.message : '저장 완료'; });
$('#handover-send').addEventListener('click', async ()=>{ const { error } = await saveHandover(state.profile, 'send'); $('#handover-status').textContent = error ? error.message : '전송 완료'; });
$('#run-search').addEventListener('click', ()=>runIntegratedSearch($('#search-query').value, state.lang));
$('#work-proofread').addEventListener('click', ()=>$('#work-note').value = proofread($('#work-note').value));
$('#work-save').addEventListener('click', ()=>{
  addLocalWork({
    line: $('#work-line').value,
    process: $('#work-process').value,
    location: proofread($('#work-location').value),
    note: proofread($('#work-note').value),
    author: state.profile?.display_name || 'user'
  });
  $('#work-status').textContent = '저장 완료';
  $('#work-note').value = '';
});

bootstrap();

export const $ = (sel) => document.querySelector(sel);
export const $$ = (sel) => Array.from(document.querySelectorAll(sel));
export const formatDate = (d) => d.toISOString().slice(0,10);
export const monthKey = (d) => `${d.getFullYear()}-${String(d.getMonth()+1).padStart(2,'0')}`;
export const shiftHours = (_company, shift) => shift === 'O' ? 0 : 12;

const KO_TO_EN = [
  ['현상', 'Symptom'], ['원인', 'Cause'], ['조치', 'Action'], ['라인', 'Line'], ['공정', 'Process'],
  ['위치', 'Location'], ['인수인계', 'Handover'], ['주간', 'Day'], ['야간', 'Night'], ['휴무', 'Off'],
  ['공정특이사항', 'Shift Notes'], ['물류', 'Logistics'], ['생산', 'Production'], ['설비', 'Equipment'],
  ['품질', 'Quality'], ['공통', 'Common'], ['저장 완료', 'Saved'], ['전송 완료', 'Sent']
];
const EN_TO_KO = KO_TO_EN.map(([ko,en]) => [en,ko]);

export function proofread(text=''){
  return String(text)
    .replace(/\r/g,'')
    .replace(/\t+/g,' ')
    .replace(/[ ]{2,}/g,' ')
    .replace(/\s+\n/g,'\n')
    .replace(/\n{3,}/g,'\n\n')
    .replace(/^\s+|\s+$/g,'')
    .replace(/\s*[:：]\s*/g, ': ')
    .replace(/현상\s*:/g,'현상: ')
    .replace(/원인\s*:/g,'원인: ')
    .replace(/조치\s*:/g,'조치: ')
    .replace(/위치\s*:/g,'위치: ')
    .replace(/라인\s*:/g,'라인: ')
    .replace(/공정\s*:/g,'공정: ');
}

export function translateMessage(text='', lang='ko'){
  let out = String(text);
  const dict = lang === 'en' ? KO_TO_EN : EN_TO_KO;
  dict.forEach(([from,to]) => { out = out.replaceAll(from, to); });
  return out;
}

export function formatKakaoDate(iso=''){
  if (!iso) return '-';
  const d = new Date(iso);
  const yy = d.getFullYear();
  const mm = String(d.getMonth()+1).padStart(2,'0');
  const dd = String(d.getDate()).padStart(2,'0');
  const hh = String(d.getHours()).padStart(2,'0');
  const mi = String(d.getMinutes()).padStart(2,'0');
  return `${yy}-${mm}-${dd} ${hh}:${mi}`;
}

export function roleAllows(role, tab){
  if (role === 'Operator') return ['calendar','pay'].includes(tab);
  return ['calendar','pay','work','chat','handover','search'].includes(tab);
}
export function shiftClass(shift){ return shift === 'D' ? 'day' : shift === 'N' ? 'night' : 'off'; }
export function shiftLabel(shift){ return shift === 'D' ? '주간' : shift === 'N' ? '야간' : '휴무'; }
export function applyTheme(theme='blue'){
  document.body.classList.remove('theme-dark','theme-kakao');
  if (theme === 'dark') document.body.classList.add('theme-dark');
  if (theme === 'kakao') document.body.classList.add('theme-kakao');
}
export function escapeHtml(text=''){
  return String(text)
    .replaceAll('&', '&amp;')
    .replaceAll('<', '&lt;')
    .replaceAll('>', '&gt;')
    .replaceAll('"', '&quot;')
    .replaceAll("'", '&#39;');
}
export function nl2br(text=''){ return escapeHtml(text).replace(/\n/g, '<br>'); }

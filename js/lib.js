export const $ = (sel) => document.querySelector(sel);
export const $$ = (sel) => Array.from(document.querySelectorAll(sel));
export const formatDate = (d) => d.toISOString().slice(0,10);
export const monthKey = (d) => `${d.getFullYear()}-${String(d.getMonth()+1).padStart(2,'0')}`;
export const shiftHours = (_company, shift) => shift === 'O' ? 0 : 12;

const KO_TO_EN = [
  ['현상', 'Symptom'], ['원인', 'Cause'], ['조치', 'Action'], ['라인', 'Line'], ['공정', 'Process'],
  ['위치', 'Location'], ['인수인계', 'Handover'], ['주간', 'Day'], ['야간', 'Night'], ['휴무', 'Off'],
  ['조치완료', 'Completed'], ['확인중', 'Checking'], ['검색 결과 없음', 'No results'], ['저장 완료', 'Saved']
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
  dict.forEach(([from,to]) => {
    out = out.replaceAll(from, to);
  });
  return out;
}

export function roleAllows(role, tab){
  if (role === 'Operator') return ['calendar','pay'].includes(tab);
  return ['calendar','pay','work','chat','handover','search'].includes(tab);
}
export function shiftClass(shift){ return shift === 'D' ? 'day' : shift === 'N' ? 'night' : 'off'; }
export function applyTheme(theme='blue'){
  document.body.classList.remove('theme-dark','theme-kakao');
  if (theme === 'dark') document.body.classList.add('theme-dark');
  if (theme === 'kakao') document.body.classList.add('theme-kakao');
}

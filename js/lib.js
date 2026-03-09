export const $ = (sel) => document.querySelector(sel);
export const $$ = (sel) => Array.from(document.querySelectorAll(sel));
export const formatDate = (d) => d.toISOString().slice(0,10);
export const monthKey = (d) => `${d.getFullYear()}-${String(d.getMonth()+1).padStart(2,'0')}`;
export const startOfMonth = (d) => new Date(d.getFullYear(), d.getMonth(), 1);
export const endOfMonth = (d) => new Date(d.getFullYear(), d.getMonth()+1, 0);
export const shiftHours = (company, shift) => {
  if (shift === 'O') return 0;
  if (company === 'Samkoo') return 12;
  return 12;
};
export function proofread(text){
  return text.replace(/\s+\n/g,'\n').replace(/\n{3,}/g,'\n\n').trim();
}
export function translateMessage(text, lang){
  return text; // 실서버 번역 API 연결 전까지 원문 유지
}
export function roleAllows(role, tab){
  if (role === 'Operator') return ['calendar','pay'].includes(tab);
  return ['calendar','pay','chat','handover','search'].includes(tab);
}
export function shiftClass(shift){ return shift === 'D' ? 'day' : shift === 'N' ? 'night' : 'off'; }

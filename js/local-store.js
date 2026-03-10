import { APP_CONFIG } from './config.js';

const KEYS = {
  session: 'skba_demo_session',
  overrides: 'skba_demo_overrides',
  chat: 'skba_demo_chat',
  handover: 'skba_demo_handover',
  work: 'skba_demo_work',
  settings: 'skba_demo_settings'
};

function readStorage(storage, key, fallback){
  try { return JSON.parse(storage.getItem(key)) ?? fallback; } catch { return fallback; }
}
function writeStorage(storage, key, value){ storage.setItem(key, JSON.stringify(value)); }
function read(key, fallback){ return readStorage(localStorage, key, fallback); }
function write(key, value){ writeStorage(localStorage, key, value); }

export function getDemoUserByEmail(email){
  return APP_CONFIG.DEMO_USERS.find(u => u.email.toLowerCase() === String(email).trim().toLowerCase()) || null;
}
export function createDemoSession(user){
  const session = { user: { id: user.id, email: user.email }, access_token: 'demo-token', is_demo: true };
  writeStorage(sessionStorage, KEYS.session, session);
  return session;
}
export function getDemoSession(){ return readStorage(sessionStorage, KEYS.session, null); }
export function clearDemoSession(){ sessionStorage.removeItem(KEYS.session); }
export function getDemoProfile(userId){
  const user = APP_CONFIG.DEMO_USERS.find(u => u.id === userId);
  return user ? { ...user } : null;
}
export function getLocalOverrides(userId, monthPrefix){
  const all = read(KEYS.overrides, {});
  const userMap = all[userId] || {};
  return Object.fromEntries(Object.entries(userMap).filter(([k]) => k.startsWith(monthPrefix)));
}
export function upsertLocalOverride(userId, workDate, shiftCode){
  const all = read(KEYS.overrides, {});
  all[userId] = all[userId] || {};
  all[userId][workDate] = shiftCode;
  write(KEYS.overrides, all);
  return { data: { user_id: userId, work_date: workDate, shift_code: shiftCode } };
}
export function getLocalChat(){ return read(KEYS.chat, []); }
export function addLocalChat(message){
  const rows = read(KEYS.chat, []);
  rows.push({ ...message, id: crypto.randomUUID(), created_at: new Date().toISOString() });
  write(KEYS.chat, rows);
  window.dispatchEvent(new CustomEvent('skba-local-chat-updated'));
  return rows;
}
export function getLocalHandovers(){ return read(KEYS.handover, []); }
export function addLocalHandover(row){
  const rows = read(KEYS.handover, []);
  rows.unshift({ ...row, id: crypto.randomUUID(), created_at: new Date().toISOString() });
  write(KEYS.handover, rows);
  return rows;
}
export function getLocalWork(){ return read(KEYS.work, []); }
export function addLocalWork(row){
  const rows = read(KEYS.work, []);
  const payload = {
    ...row,
    id: crypto.randomUUID(),
    created_at: new Date().toISOString(),
    updated_at: new Date().toISOString()
  };
  rows.unshift(payload);
  write(KEYS.work, rows);
  window.dispatchEvent(new CustomEvent('skba-local-work-updated'));
  return payload;
}
export function updateLocalWork(id, patch){
  const rows = read(KEYS.work, []);
  const next = rows.map(row => row.id === id ? { ...row, ...patch, updated_at: new Date().toISOString() } : row);
  write(KEYS.work, next);
  window.dispatchEvent(new CustomEvent('skba-local-work-updated'));
  return next.find(row => row.id === id) || null;
}
export function deleteLocalWork(id){
  const rows = read(KEYS.work, []);
  const next = rows.filter(row => row.id !== id);
  write(KEYS.work, next);
  window.dispatchEvent(new CustomEvent('skba-local-work-updated'));
  return next;
}
export function getSettings(){ return read(KEYS.settings, { theme:'blue', translation:'off' }); }
export function saveSettings(settings){ write(KEYS.settings, settings); return settings; }

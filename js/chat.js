import { $, proofread, translateMessage } from './lib.js';
import { getSupabase } from './supabase.js';
import { addLocalChat, getLocalChat } from './local-store.js';

export async function loadChat(lang='ko'){
  const sb = getSupabase();
  let rows = [];
  if (sb) {
    const { data } = await sb.from('chat_messages').select('*').order('created_at', { ascending:true }).limit(200);
    rows = data || [];
  } else {
    rows = getLocalChat();
  }
  renderChat(rows, lang);
  return rows;
}
export function renderChat(rows, lang='ko'){
  $('#chat-list').innerHTML = rows.map(r => `<div class="chat-item"><div class="chat-head"><span>${r.sender_name}</span><span>${(r.created_at||'').replace('T',' ').slice(0,16)}</span></div><div class="chat-body">${translateMessage(r.body||'', lang)}</div></div>`).join('') || '<div class="muted">메시지 없음</div>';
  $('#chat-list').scrollTop = $('#chat-list').scrollHeight;
}
export async function sendChat(profile, body){
  const sb = getSupabase();
  const payload = { sender_id: profile.id, sender_name: profile.display_name, role: profile.role, body: proofread(body) };
  if (sb) return sb.from('chat_messages').insert(payload);
  addLocalChat(payload);
  return { data: payload };
}
export function subscribeChat(onChange){
  const sb = getSupabase();
  if (sb) return sb.channel('chat-live').on('postgres_changes', { event:'*', schema:'public', table:'chat_messages' }, onChange).subscribe();
  const handler = () => onChange();
  window.addEventListener('skba-local-chat-updated', handler);
  return { unsubscribe(){ window.removeEventListener('skba-local-chat-updated', handler); } };
}

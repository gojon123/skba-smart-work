import { $, proofread, translateMessage } from './lib.js';
import { getSupabase } from './supabase.js';
import { addLocalChat, getLocalChat } from './local-store.js';

export async function loadChat(lang='ko', currentUserId=null, showTranslation=false){
  const sb = getSupabase();
  let rows = [];
  if (sb) {
    const { data } = await sb.from('chat_messages').select('*').order('created_at', { ascending:true }).limit(200);
    rows = data || [];
  } else {
    rows = getLocalChat();
  }
  renderChat(rows, lang, currentUserId, showTranslation);
  return rows;
}
export function renderChat(rows, lang='ko', currentUserId=null, showTranslation=false){
  $('#chat-list').innerHTML = rows.map(r => {
    const isMe = r.sender_id && currentUserId && r.sender_id === currentUserId;
    const translated = translateMessage(r.body||'', lang);
    const needTranslation = showTranslation && translated !== (r.body||'');
    return `<div class="chat-row ${isMe ? 'me' : 'other'}">
      <div class="chat-meta"><span>${r.sender_name}</span><span>${(r.created_at||'').replace('T',' ').slice(0,16)}</span></div>
      <div class="chat-bubble">${r.body || ''}${needTranslation ? `<div class="chat-translation">${translated}</div>` : ''}</div>
    </div>`;
  }).join('') || '<div class="muted">메시지 없음</div>';
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

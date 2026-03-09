import { $, proofread } from './lib.js';
import { getSupabase } from './supabase.js';
import { addLocalChat, addLocalHandover, getLocalChat } from './local-store.js';

export async function suggestFromChat(profile){
  const sb = getSupabase();
  let rows = [];
  if (sb) {
    const { data } = await sb.from('chat_messages').select('*').order('created_at', { ascending:false }).limit(50);
    rows = data || [];
  } else {
    rows = getLocalChat().slice(-50).reverse();
  }
  return rows.slice(0,5).map(r => `- ${r.body}`);
}
export function applySuggestions(lines){
  if (!$('#handover-phenomenon').value && lines[0]) $('#handover-phenomenon').value = lines[0].replace(/^-\s*/, '');
  if (!$('#handover-cause').value && lines[1]) $('#handover-cause').value = lines[1].replace(/^-\s*/, '');
  if (!$('#handover-action').value && lines[2]) $('#handover-action').value = lines[2].replace(/^-\s*/, '');
  $('#handover-suggestions').innerHTML = lines.map(x => `<div class="suggestion-item">${x}</div>`).join('');
}
export async function saveHandover(profile, mode='save'){
  const payload = {
    author_id: profile.id,
    author_name: profile.display_name,
    line_name: $('#handover-line').value,
    process_name: $('#handover-process').value,
    phenomenon: proofread($('#handover-phenomenon').value),
    cause: proofread($('#handover-cause').value),
    action: proofread($('#handover-action').value),
    send_to_chat: mode === 'send'
  };
  const sb = getSupabase();
  let result;
  if (sb) {
    result = await sb.from('handover_records').insert(payload).select().single();
    if (!result.error && mode === 'send') {
      await sb.from('chat_messages').insert({
        sender_id: profile.id,
        sender_name: profile.display_name,
        role: profile.role,
        body: `[인수인계]\n라인: ${payload.line_name}\n공정: ${payload.process_name}\n현상: ${payload.phenomenon}\n원인: ${payload.cause}\n조치: ${payload.action}`
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
      body: `[인수인계]\n라인: ${payload.line_name}\n공정: ${payload.process_name}\n현상: ${payload.phenomenon}\n원인: ${payload.cause}\n조치: ${payload.action}`
    });
  }
  return { data: payload };
}

import { getSupabase } from './supabase.js';
import { $ } from './lib.js';
import { createDemoSession, getDemoProfile, getDemoSession, clearDemoSession, getDemoUserByEmail } from './local-store.js';

export function isDemoMode(){ return !getSupabase(); }

export async function signIn(email, password){
  const sb = getSupabase();
  if (sb) return sb.auth.signInWithPassword({ email, password });
  const user = getDemoUserByEmail(email);
  if (!user || user.password !== password) return { error: { message: '데모 계정 정보가 맞지 않습니다.' } };
  const session = createDemoSession(user);
  return { data: { session, user: session.user } };
}
export async function signOut(){
  const sb = getSupabase();
  if (sb) return sb.auth.signOut();
  clearDemoSession();
}
export async function getSession(){
  const sb = getSupabase();
  if (sb) {
    const { data } = await sb.auth.getSession();
    return data.session || null;
  }
  return getDemoSession();
}
export async function loadProfile(userId){
  const sb = getSupabase();
  if (sb) {
    const { data, error } = await sb.from('profiles').select('*').eq('id', userId).single();
    if (error) return null;
    return data;
  }
  return getDemoProfile(userId);
}
export function showAuthStatus(msg){ $('#auth-status').textContent = msg || ''; }

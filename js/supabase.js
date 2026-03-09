import { APP_CONFIG } from './config.js';
let supabase = null;
export function getSupabase() {
  if (supabase) return supabase;
  if (!window.supabase || APP_CONFIG.SUPABASE_URL.includes('REPLACE_')) return null;
  supabase = window.supabase.createClient(APP_CONFIG.SUPABASE_URL, APP_CONFIG.SUPABASE_ANON_KEY, {
    auth: { persistSession: true, autoRefreshToken: true }
  });
  return supabase;
}

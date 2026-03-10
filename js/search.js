import { $, translateMessage } from './lib.js';
import { getSupabase } from './supabase.js';
import { BOOTSTRAP_SEARCH } from './bootstrap-data.js';

let bootstrap = null;
async function getBootstrap(){
  if (bootstrap) return bootstrap;
  try {
    const res = await fetch('./data/bootstrap-search.json');
    if (!res.ok) throw new Error('fetch failed');
    bootstrap = await res.json();
  } catch {
    bootstrap = BOOTSTRAP_SEARCH;
  }
  return bootstrap;
}
function normalizeSeed(seed){
  const arr = [];
  (seed.mes||[]).forEach(x=>arr.push({ source_type:'MES', keyword:x.error_code, value:`라인:${x.lines || '-'} / 공정:${x.processes || '-'} / 설비:${x.equipment || '-'}`, sample_message:x.sample_message, count:x.count }));
  (seed.keywords||[]).forEach(x=>arr.push({ source_type:x.category, keyword:x.keyword, value:x.value, sample_message:`count:${x.count}`, count:x.count }));
  (seed.handover||[]).forEach(x=>arr.push({ source_type:'handover', keyword:x.sender, value:`라인:${x.lines || '-'} / 공정:${x.processes || '-'} / 출처:${x.source_zip || '-'}`, sample_message:x.message, count:1 }));
  return arr;
}
function renderResults(results, lang='ko'){
  $('#search-results').innerHTML = results.map(r=>{
    const meta = [];
    if (r.source_type) meta.push(`<span class="chip">${r.source_type}</span>`);
    if (r.count) meta.push(`<span class="chip">${r.count}건</span>`);
    if (r.value) meta.push(`<span class="chip">${r.value}</span>`);
    return `<div class="search-card">
      <div class="search-top">
        <div class="search-title">${r.keyword || '검색 결과'}</div>
      </div>
      <div class="search-meta">${meta.join('')}</div>
      <div class="chat-body">${translateMessage(r.sample_message || '', lang)}</div>
    </div>`;
  }).join('') || '<div class="muted">검색 결과 없음</div>';
}
export async function runIntegratedSearch(query, lang='ko'){
  const q = (query||'').trim();
  if (!q) { $('#search-results').innerHTML=''; return; }
  const sb = getSupabase();
  let results=[];
  if (sb){
    const { data } = await sb.from('search_index').select('*').or(`keyword.ilike.%${q}%,value.ilike.%${q}%,sample_message.ilike.%${q}%`).limit(100);
    results = data || [];
  }
  if (!results.length){
    const seed = await getBootstrap();
    const arr = normalizeSeed(seed);
    const s=q.toLowerCase();
    results = arr.filter(r => JSON.stringify(r).toLowerCase().includes(s)).slice(0,100);
  }
  renderResults(results, lang);
}

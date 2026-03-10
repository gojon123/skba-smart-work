import { $, formatDate, shiftClass, monthKey, shiftHours } from './lib.js';
import { ROLES } from './constants.js';
import { getSupabase } from './supabase.js';
import { getLocalOverrides, upsertLocalOverride } from './local-store.js';

function skbaShiftFor(date, crew){
  const start = new Date('2026-03-01');
  const patternAB = ['D','O','O','D','D','O','O','O','D','D','O','O','D','D'];
  const patternCD = ['O','D','D','O','O','D','D','D','O','O','D','D','O','O'];
  const day = Math.floor((date - start)/(1000*60*60*24));
  const idx = ((day % 14) + 14) % 14;
  if (crew === 'A') return patternAB[idx];
  if (crew === 'B') return patternAB[idx] === 'D' ? 'N' : patternAB[idx];
  if (crew === 'C') return patternCD[idx] === 'D' ? 'D' : 'O';
  if (crew === 'D') return patternCD[idx] === 'D' ? 'N' : 'O';
  return 'O';
}
function samkooShiftFor(date, building){
  const dow = date.getDay();
  if (dow === 1 || dow === 2) return 'O';
  if (building === '1동') return 'D';
  const ref = new Date('2026-03-02');
  const week = Math.floor((date - ref)/(1000*60*60*24*7));
  return Math.abs(week)%2===0 ? 'D' : 'N';
}
export function computePersonalShift(profile, date){
  if (profile.role === ROLES.SAMKOO) return samkooShiftFor(date, profile.building || '1동');
  return skbaShiftFor(date, profile.crew || 'A');
}
export function computeTeamView(date){
  return ['A','B','C','D'].map(crew => ({ crew, shift: skbaShiftFor(date, crew) }));
}
export async function loadOverrides(userId, monthDate){
  const sb = getSupabase();
  const start = formatDate(new Date(monthDate.getFullYear(), monthDate.getMonth(), 1));
  const end = formatDate(new Date(monthDate.getFullYear(), monthDate.getMonth()+1, 0));
  if (sb) {
    const { data } = await sb.from('calendar_overrides').select('*').eq('user_id', userId).gte('work_date', start).lte('work_date', end);
    const map={}; (data||[]).forEach(r=>map[r.work_date]=r.shift_code);
    return map;
  }
  return getLocalOverrides(userId, start.slice(0,7));
}
export async function saveOverride(userId, workDate, shiftCode){
  const sb = getSupabase();
  if (sb) return sb.from('calendar_overrides').upsert({ user_id:userId, work_date:workDate, shift_code:shiftCode }, { onConflict:'user_id,work_date' });
  return upsertLocalOverride(userId, workDate, shiftCode);
}
export async function renderCalendar(profile, monthDate, selectedCb, selectedDateIso){
  const grid = $('#calendar-grid');
  $('#month-label').textContent = monthKey(monthDate);
  $('#calendar-profile-summary').textContent = `${profile.display_name} / ${profile.role} / ${profile.building || '-'} / ${profile.crew || '-'}조 기준`;
  const overrides = await loadOverrides(profile.id, monthDate);
  grid.innerHTML='';
  const last = new Date(monthDate.getFullYear(), monthDate.getMonth()+1, 0);
  for (let d=1; d<=last.getDate(); d++){
    const cur = new Date(monthDate.getFullYear(), monthDate.getMonth(), d);
    const iso = formatDate(cur);
    const base = computePersonalShift(profile, cur);
    const shift = overrides[iso] || base;
    const team = computeTeamView(cur);
    const cell = document.createElement('button');
    cell.className='calendar-cell';
    if (selectedDateIso === iso) cell.classList.add('selected');
    cell.innerHTML = `<div class="date">${d}</div>
      <div class="my-shift ${shiftClass(shift)}">${shift}</div>
      <div class="team-line"><span>A조</span> <span class="${shiftClass(team[0].shift)}">${team[0].shift}</span></div>
      <div class="team-line"><span>B조</span> <span class="${shiftClass(team[1].shift)}">${team[1].shift}</span></div>
      <div class="team-line"><span>C조</span> <span class="${shiftClass(team[2].shift)}">${team[2].shift}</span></div>
      <div class="team-line"><span>D조</span> <span class="${shiftClass(team[3].shift)}">${team[3].shift}</span></div>`;
    cell.addEventListener('click',()=>selectedCb({ date:cur, iso, shift }));
    grid.appendChild(cell);
  }
}
export function monthWorkSummary(profile, monthDate, overrides={}){
  const last = new Date(monthDate.getFullYear(), monthDate.getMonth()+1, 0);
  let day=0, night=0, off=0, hours=0;
  for (let d=1; d<=last.getDate(); d++){
    const cur = new Date(monthDate.getFullYear(), monthDate.getMonth(), d);
    const iso = formatDate(cur);
    const shift = overrides[iso] || computePersonalShift(profile, cur);
    if (shift === 'D') day++;
    else if (shift === 'N') night++;
    else off++;
    hours += shiftHours(profile.role === 'Samkoo' ? 'Samkoo' : 'SKBA', shift);
  }
  return { day, night, off, hours };
}
export async function getMonthOverrideMap(profile, monthDate){ return loadOverrides(profile.id, monthDate); }

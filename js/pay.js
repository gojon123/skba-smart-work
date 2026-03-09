import { monthWorkSummary, getMonthOverrideMap } from './calendar.js';
import { $ } from './lib.js';

export async function renderPay(profile, monthDate){
  const overrides = await getMonthOverrideMap(profile, monthDate);
  const s = monthWorkSummary(profile, monthDate, overrides);
  const baseRate = Number($('#base-rate').value || 0);
  const nightDiff = Number($('#night-diff').value || 0);
  const insurance = Number($('#insurance').value || 0);
  const k401 = Number($('#k401').value || 0) / 100;
  const federal = Number($('#federal-tax').value || 0) / 100;
  const ga = Number($('#ga-tax').value || 0) / 100;
  const grossDay = s.day * 12 * baseRate;
  const grossNight = s.night * 12 * (baseRate + nightDiff);
  const gross = grossDay + grossNight;
  const regularHours = Math.min(s.hours, Math.ceil(s.hours / 7) * 40);
  const otHours = Math.max(0, s.hours - regularHours);
  const k401Value = gross * k401;
  const taxable = Math.max(0, gross - k401Value);
  const federalValue = taxable * federal;
  const gaValue = taxable * ga;
  const ssValue = taxable * 0.062;
  const mediValue = taxable * 0.0145;
  const totalDeduction = k401Value + insurance + federalValue + gaValue + ssValue + mediValue;
  const net = gross - totalDeduction;
  $('#pay-summary').innerHTML = `
    <div><strong>Day</strong><br>${s.day}일</div>
    <div><strong>Night</strong><br>${s.night}일</div>
    <div><strong>Total Hours</strong><br>${s.hours}h</div>
    <div><strong>OT Estimate</strong><br>${otHours}h</div>
    <div><strong>Gross</strong><br>$${gross.toFixed(2)}</div>
    <div><strong>401k</strong><br>$${k401Value.toFixed(2)}</div>
    <div><strong>Insurance</strong><br>$${insurance.toFixed(2)}</div>
    <div><strong>Federal</strong><br>$${federalValue.toFixed(2)}</div>
    <div><strong>Georgia</strong><br>$${gaValue.toFixed(2)}</div>
    <div><strong>Social Security</strong><br>$${ssValue.toFixed(2)}</div>
    <div><strong>Medicare</strong><br>$${mediValue.toFixed(2)}</div>
    <div><strong>Net</strong><br>$${net.toFixed(2)}</div>`;
}

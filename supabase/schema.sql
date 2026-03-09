-- SKBA Smart Work / Supabase Schema
create extension if not exists pgcrypto;

create table if not exists profiles (
  id uuid primary key references auth.users(id) on delete cascade,
  email text unique,
  display_name text not null,
  role text not null check (role in ('Operator','Engineer','Samkoo')),
  crew text,
  building text,
  lang text default 'ko',
  created_at timestamptz default now()
);

create table if not exists calendar_overrides (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references profiles(id) on delete cascade,
  work_date date not null,
  shift_code text not null check (shift_code in ('D','N','O')),
  created_at timestamptz default now(),
  unique(user_id, work_date)
);

create table if not exists chat_messages (
  id uuid primary key default gen_random_uuid(),
  sender_id uuid references profiles(id) on delete set null,
  sender_name text not null,
  role text not null,
  body text not null,
  created_at timestamptz default now()
);

create table if not exists handover_records (
  id uuid primary key default gen_random_uuid(),
  author_id uuid references profiles(id) on delete set null,
  author_name text not null,
  line_name text,
  process_name text,
  phenomenon text,
  cause text,
  action text,
  send_to_chat boolean default false,
  created_at timestamptz default now()
);

create table if not exists search_index (
  id uuid primary key default gen_random_uuid(),
  source_type text not null,
  keyword text,
  value text,
  sample_message text,
  count int default 1,
  created_at timestamptz default now()
);

alter table profiles enable row level security;
alter table calendar_overrides enable row level security;
alter table chat_messages enable row level security;
alter table handover_records enable row level security;
alter table search_index enable row level security;

create policy "profiles_self_read" on profiles for select using (auth.uid() = id);
create policy "profiles_self_update" on profiles for update using (auth.uid() = id);

create policy "calendar_self_all" on calendar_overrides for all using (auth.uid() = user_id) with check (auth.uid() = user_id);
create policy "chat_read_all" on chat_messages for select using (auth.role() = 'authenticated');
create policy "chat_insert_auth" on chat_messages for insert with check (auth.role() = 'authenticated');
create policy "handover_read_all" on handover_records for select using (auth.role() = 'authenticated');
create policy "handover_insert_auth" on handover_records for insert with check (auth.role() = 'authenticated');
create policy "search_read_all" on search_index for select using (auth.role() = 'authenticated');

create or replace function public.handle_new_user()
returns trigger
language plpgsql
security definer
as $$
begin
  insert into public.profiles (id, email, display_name, role, crew, building)
  values (new.id, new.email, coalesce(new.raw_user_meta_data->>'display_name', split_part(new.email,'@',1)), coalesce(new.raw_user_meta_data->>'role','Operator'), new.raw_user_meta_data->>'crew', new.raw_user_meta_data->>'building');
  return new;
end;
$$;

drop trigger if exists on_auth_user_created on auth.users;
create trigger on_auth_user_created after insert on auth.users for each row execute procedure public.handle_new_user();

alter table public.transactions add column if not exists is_neutral boolean not null default false;
create unique index if not exists transactions_import_unique on public.transactions(household_id,import_hash) where import_hash is not null;

supabase db dump --db-url "SOURCE_DB_URL" -f roles.sql --role-only
supabase db dump --db-url "SOURCE_DB_URL" -f schema.sql
supabase db dump --db-url "SOURCE_DB_URL" -f data.sql --use-copy --data-only
psql \
    --single-transaction \
    --variable ON_ERROR_STOP=1 \
    --file roles.sql \
    --file schema.sql \
    --command 'SET session_replication_role = replica' \
    --file data.sql \
    --dbname "TARGET_DB_URL"

psql "TARGET_DB_URL" \
    --single-transaction \
    --variable=ON_ERROR_STOP=1 \
    --file=roles.sql \
    --file=schema.sql \
    --command="SET session_replication_role = replica" \
    --file=data.sql
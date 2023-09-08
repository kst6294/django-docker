set -e

# User & DB Creation
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOF
    DROP DATABASE IF EXISTS api;
    DROP USER IF EXISTS andy;
    CREATE USER andy WITH PASSWORD 'password' CREATEDB;
    CREATE DATABASE api OWNER andy;
EOF


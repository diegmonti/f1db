FROM mysql:8.0-debian
RUN apt-get update && apt-get install -y wget && rm -rf /var/lib/apt/lists/* && wget -O /docker-entrypoint-initdb.d/f1db.sql.gz https://web.archive.org/web/20250417140054if_/https://ergast.com/downloads/f1db.sql.gz

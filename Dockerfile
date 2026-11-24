FROM mysql:8.4
RUN curl --fail --location --retry 3 --output /docker-entrypoint-initdb.d/f1db.sql.gz \
        https://web.archive.org/web/20250417140054if_/https://ergast.com/downloads/f1db.sql.gz \
    && gzip -t /docker-entrypoint-initdb.d/f1db.sql.gz

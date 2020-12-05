FROM mysql
RUN apt update && apt install -y wget && wget -O /docker-entrypoint-initdb.d/f1db.sql.gz http://ergast.com/downloads/f1db.sql.gz

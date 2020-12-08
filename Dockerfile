FROM mysql
RUN apt-get update && apt-get install -y wget && rm -rf /var/lib/apt/lists/* && wget -O /docker-entrypoint-initdb.d/f1db.sql.gz http://ergast.com/downloads/f1db.sql.gz

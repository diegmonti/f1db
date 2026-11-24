# f1db

A Docker image containing a MySQL server with the Formula 1 database, as provided by [Ergast](https://web.archive.org/web/20250418185906/http://ergast.com/mrd/db/) and updated through the end of 2024.

You can start it with:

`docker run --rm -p 127.0.0.1:3346:3306 -e MYSQL_ROOT_PASSWORD=f1db -e MYSQL_DATABASE=f1db ghcr.io/diegmonti/f1db`

The server will run on `localhost:3346`. The user is `root`, the password is `f1db`, and the database is also `f1db`.

For Tableau Desktop, select the MySQL connector and use these connection details. New accounts use `mysql_native_password` by default.

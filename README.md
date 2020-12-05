# f1db

Docker image containing a MySQL server with the Formula 1 database as provided by [Ergast](http://ergast.com/mrd/db/).

You can start it with: `docker run --rm -p 3346:3306 -e MYSQL_ROOT_PASSWORD=f1db -e MYSQL_DATABASE=f1db diegmonti/f1db --default-authentication-plugin=mysql_native_password`

The server will run on `localhost:3346`, the user is `root`, the password `f1db` and the database `f1db` as well.

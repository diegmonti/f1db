# f1db

A Docker image containing a MySQL server with the Formula 1 database, as provided by [Ergast](https://web.archive.org/web/20250418185906/http://ergast.com/mrd/db/) and updated through the end of 2024.

You can start it with:

`docker run --rm -p 127.0.0.1:3346:3306 -e MYSQL_ROOT_PASSWORD=f1db -e MYSQL_DATABASE=f1db ghcr.io/diegmonti/f1db`

The server will run on `localhost:3346`. The user is `root`, the password is `f1db`, and the database is also `f1db`.

For Tableau Desktop, select the MySQL connector and use the connection details above. New accounts use `mysql_native_password` by default. To set up a read-only Tableau login, sign in as a MySQL administrator, choose a password, and run:

```sql
CREATE USER 'tableau'@'%' IDENTIFIED WITH mysql_native_password BY 'your-chosen-password';
GRANT SELECT, SHOW VIEW ON f1db.* TO 'tableau'@'%';
```

In Tableau Desktop, select the MySQL connector, connect to `127.0.0.1` on port `3346` as `tableau`, and select the `f1db` database.

If you reuse an existing data volume, keep it attached when recreating the container. Tableau accounts already using native authentication can reconnect with their existing passwords.

For a volume initialized with the earlier MySQL 8.4 image, check the existing Tableau login with `SELECT User, Host, plugin FROM mysql.user;`. If it uses `caching_sha2_password`, run the following as an administrator, substituting the exact user, host, and current password of that account:

```sql
ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'your-existing-password';
```

# Import mysql dump files.

## Multiple import.

### Features:
- Create database, user, grant access and import database.
- Database and user names will be same as the dump file name.

### Pre-requisite
- All dump files must be of type gzipped sql (*.sql.gz).
- Use only alpha-numeric charactors for database file names (mydb.sql.gz).
- Put all your dump files in `/tmp/dump/` directory.
- Get a mysql user credential of your database that have access to create
databases and users.
- Run following to import all the databases:
  ```
  $ curl -sS ...
  ```

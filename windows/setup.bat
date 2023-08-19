cd mariaDB
mariadb-11.2.0-winx64.msi

cd ..\npm-nodejs
node-v18.17.1-x64.msi
call npm install -g @angular/cli

cd ..\..\tucano\server
call npm update
md client
cd public
md fotoProfilo

cd ..\..\client
call npm update
call ng build
move dist\client\* ..\server\client

cd ..

"C:\Program Files\MariaDB 11.2\bin\mysql.exe" "--defaults-file=C:\Program Files\MariaDB 11.2\data\my.ini" -uroot -p "--execute=CREATE DATABASE TUCANO"
"C:\Program Files\MariaDB 11.2\bin\mysql.exe" "--defaults-file=C:\Program Files\MariaDB 11.2\data\my.ini" -uroot -p "--execute=CREATE USER 'cano'@'localhost' IDENTIFIED BY 'cano'"
"C:\Program Files\MariaDB 11.2\bin\mysql.exe" "--defaults-file=C:\Program Files\MariaDB 11.2\data\my.ini" -uroot -p "--execute=GRANT ALL PRIVILEGES ON TUCANO.* TO 'cano'@'localhost'"
"C:\Program Files\MariaDB 11.2\bin\mysql.exe" "--defaults-file=C:\Program Files\MariaDB 11.2\data\my.ini" -uroot -p "--execute=FLUSH PRIVILEGES"
"C:\Program Files\MariaDB 11.2\bin\mysql.exe" "--defaults-file=C:\Program Files\MariaDB 11.2\data\my.ini" -ucano -pcano TUCANO < "sql\tucano.sql"

cd server
call npm start
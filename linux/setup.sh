# eseguo gli aggiornamenti e installo git, mysql
sudo apt-get -y update
sudo apt install -y mariadb-server

# installo npm, nodejs and angular per client e server
sudo apt install -y npm
sudo apt install -y nodejs
sudo npm install -g @angular/cli

# faccio l'update del server
cd ../tucano/server
mkdir client
mkdir public/fotoProfilo
npm update

# update e compilazione del client e lo sposto sul web-server del pc installato con apache
cd ../client
npm update
ng build
mv dist/client/* ../server/client

# creo il database
sudo mysql -uroot --execute="CREATE DATABASE TUCANO"
sudo mysql -uroot --execute="CREATE USER 'cano'@'localhost' IDENTIFIED BY 'cano'"
sudo mysql -uroot --execute="GRANT ALL PRIVILEGES ON TUCANO.* TO 'cano'@'localhost'"
sudo mysql -uroot --execute="FLUSH PRIVILEGES"
sudo mysql -ucano -pcano TUCANO < "../sql/tucano.sql"

echo Tutte le operazioni sono state eseguite, avvio il server, dopo potrai andare su http://localhost:3000/
cd ../server
npm start

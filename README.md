# TUCANO

# Benvenuto nel primo prototipo di Tucano!

Tucano è un servizio client-server per prenotare delle stanze in uno o più edifici.

Nella cartella `tucano` ci sono tutti i file di client e server con una copia del database:
 - il lato server è stato creato utilizzando il framework `nodejs` e `express`;
 - il lato client è stato creato utilizzando il framework `angular`;
 - per il database è stato scelto il linguaggio `mysql` con area di sviluppo `mariadb`

---

Nella cartella `linux` ci sono i file di setup per chi usa linux-deb:
 - `setup.sh` installa mariaDB, npm, nodejs e angular, effettua l'update del client e del server, crea il database e fa partire il server
 - `run.sh` fa partire il server (è necessario l'esecuzione di setup.sh prima)
 - `uninstall.sh` disinstalla mariaDB, npm, nodejs e angular e cancella il database

---

Nella cartella `windows` ci sono i file di setup per chi usa windows (unlikely):
- `setup.bat` installa mariaDB, npm, nodejs e angular, effettua l'update del client e del server, crea il database e fa partire il server (durante l'installazione si consiglia di usare il file nella cartella mariaDB e di non cambiare le directory d'installazione di default, quando il programma chiederà la password si dovrà inserire la password di maraDB chiesta durante l'installazione)
- `run.bat` fa partire il server (è necessario l'esecuzione di setup.bat prima)
- `deleteDB.bat` cancella il database (la cancellazione di mariaDB, npm e nodejs dovrà essere effettuata manualmente)
- `mariaDB` contiene il file .msi per installare mariaDB (si prega di non rinominare il file)
- `npm-nodejs` contiene il file .msi per installare npm e nodejs (si prega di non rinominare il file)

---

Il servizio sarà visibile al link http://localhost:3000
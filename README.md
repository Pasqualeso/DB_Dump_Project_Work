# DB_Dump_Project_Work
Descrizione

Questo repository contiene il dump SQL del database sviluppato per il project work universitario nel settore trasporti ferroviari. Il database è progettato per gestire biglietti, prenotazioni, tratte ferroviarie e passeggeri.

Struttura del Database

Il database include le seguenti tabelle principali:
	•	Passeggero: gestione dei dati personali dei clienti
	•	Stazione: elenco delle stazioni ferroviarie disponibili
	•	Treno: informazioni sui mezzi di trasporto
	•	Tratta: gestione delle tratte ferroviarie e orari di partenza
	•	Fermata: gestione delle fermate intermedie
	•	Biglietto: acquisto e stato dei biglietti
	•	Prenotazione: informazioni sulle prenotazioni effettuate

Strumenti Utilizzati
	•	MySQL: database management system utilizzato
	•	MySQL Workbench: per la modellazione e l’esecuzione delle query
	•	Dia: per la creazione del diagramma ER
	•	GitHub: per la gestione della versione del dump SQL

Come Usare il Dump SQL

1) Importare il Database in MySQL

Se hai MySQL installato, puoi importare il dump con il seguente comando nel terminale:
mysql -u root -p < project_work_dump.sql

Se vuoi importarlo in un database specifico:
mysql -u root -p nome_database < project_work_dump.sql
Sostituisci nome_database con il nome del tuo database.

2) Creare il Database Manualmente
Se il database non esiste, crealo prima di importare il dump:
CREATE DATABASE project_work;
USE project_work;
SOURCE project_work_dump.sql;

Il dump include sia la struttura che i dati di test per verificare il funzionamento del database.
Assicurati che il server MySQL sia attivo prima di eseguire il comando di importazione.


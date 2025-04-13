# DB_Dump_Project_Work

Questo repository contiene il dump SQL del database sviluppato per il project work universitario nel settore dei trasporti ferroviari.  
Il database è progettato per gestire biglietti, prenotazioni, tratte ferroviarie, treni, stazioni e passeggeri.

---

## Struttura del Database

Il database include le seguenti tabelle principali:

- **Passeggero**: gestione dei dati personali dei clienti.
- **Stazione**: elenco delle stazioni ferroviarie.
- **Treno**: informazioni sui mezzi di trasporto.
- **Tratta**: gestione delle tratte ferroviarie e dei costi/durata.
- **Percorre**: relazione tra treni, tratte e orari specifici.
- **Posto**: rappresenta i posti disponibili su ogni treno (carrozza, numero, classe).
- **Biglietto**: gestisce l'acquisto e lo stato dei biglietti.
- **Prenotazione**: dati delle prenotazioni effettuate dai passeggeri.
- **Valida / Assegna / Riguarda**: relazioni tra biglietto, corsa (treno + tratta + data), posto e prenotazione.

---

## Strumenti Utilizzati

- **MySQL**: database management system utilizzato.
- **MySQL Workbench**: per la modellazione e l’esecuzione delle query.
- **Dia**: per la creazione del diagramma ER.
- **GitHub**: per la gestione della versione del dump SQL.

---

## Come Usare il Dump SQL

### 1. Importare il Database in MySQL

Se hai MySQL installato, puoi importare il dump con il seguente comando nel terminale:

```bash
mysql -u root -p < project_work_dump.sql 
```
### 2. Importare in un Database Specifico

```bash
mysql -u root -p nome_database < project_work_dump.sql
```

### 3. Creare il Database Manualmente
``` sql
CREATE DATABASE project_work;
USE project_work;
SOURCE project_work_dump.sql;
```

---

### Contenuto del Dump

### Il file .sql contiene:
	•	La struttura completa delle tabelle.
	•	I vincoli di integrità (chiavi primarie e chiavi esterne).
	•	Gli indici per l’ottimizzazione delle query.
	•	Dati di esempio: 10 record per ciascuna tabella, utili per verificare il funzionamento.

---

### Requisiti
	•	MySQL installato (versione consigliata ≥ 8.0).
	•	Server MySQL attivo durante l’importazione.
	•	MySQL Workbench (opzionale, per la visualizzazione grafica del database).

---

Autore: Pasquale Sorrentino
Anno accademico: 2024/2025



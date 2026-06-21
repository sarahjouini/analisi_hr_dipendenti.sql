# analisi_hr_dipendenti.sql
## Descrizione
Secondo progetto di analisi dati, questa volta su un dataset HR (risorse umane) con SQL Server.
Rispetto al primo progetto, ho lavorato con un dataset più ricco (6 tabelle collegate) e con un livello di autonomia maggiore nel ragionamento delle query, anche se ho richiesto supporto sulla sintassi esatta.

## Dataset
Il dataset è composto da 6 tabelle relazionali:
- **employees**: dati personali dei dipendenti (nome, data di nascita, data di assunzione, genere)
- **departments**: lista dei dipartimenti aziendali
- **dept_emp**: collegamento tra dipendenti e dipartimenti, con storico temporale
- **dept_manager**: collegamento tra manager e dipartimenti
- **salaries**: storico stipendi di ogni dipendente nel tempo
- **titles**: storico dei ruoli/titoli professionali di ogni dipendente

Fonte: [SQL Practice Dataset - Kaggle]

## Domande di business affrontate

1. **Quanti dipendenti lavorano in ogni dipartimento?**
   JOIN tra dept_emp e departments per ottenere un conteggio leggibile per nome di dipartimento.

2. **Qual è lo stipendio medio per ogni titolo/ruolo professionale?**
   JOIN tra titles e salaries per confrontare la retribuzione media tra ruoli diversi (es. Engineer vs Senior Engineer).

3. **Quanti dipendenti hanno il titolo di "Senior Engineer" attualmente?**
   Filtro con doppia condizione (titolo + data di fine non terminata) per ottenere solo i ruoli attivi.

4. **Quali sono i 5 dipendenti con lo stipendio più alto attualmente in azienda?**
   Ordinamento decrescente con limite ai primi 5 risultati.

5. **Quanti dipendenti sono stati assunti per ogni anno?**
   Estrazione dell'anno da una data per analizzare i trend di assunzione nel tempo.

## Tecniche SQL utilizzate
- `JOIN` su più tabelle
- `GROUP BY` con funzioni di aggregazione (`COUNT`, `AVG`)
- `WHERE` con condizioni multiple (`AND`)
- `ORDER BY` con `TOP` per i risultati limitati
- Funzioni su date (`YEAR()`)
- Gestione di dati storici (pattern data "9999-01-01" per indicare valori ancora attivi)

## Strumenti
- Microsoft SQL Server
- SQL Server Management Studio (SSMS)

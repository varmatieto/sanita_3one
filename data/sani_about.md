### Descrizione dell'App

L'App riporta tre elaborazioni sul database delle Prestazioni
Specialistiche 2012 in Piemonte.

-   `sintesi` dove sono riportate le prestazioni di sintesi per
    l'insieme delle aziende o discipline. Nell'asse X si puo' scegliere
    o la sommatoria delle prestazioni erogate, o il numero di
    osservazioni per la singola entita in Y. Nell'asse Y si hanno a
    scelta tutte le aziende o tutte le discipline. E' possibile
    visualizzare le quantita' anche in scale logaritmica, e evidenziare
    le prestazioni da strutture private.

-   `disciplina` dove sono riportate le prestazioni di sintesi per la
    singola disciplina. Nell'asse X si ha o la sommatoria delle
    prestazioni erogate, o il numero di osservazioni per la singola
    entita in Y. Nell'asse Y si hanno tutte le aziende che hanno erogato
    la prestazione scelta. E' possibile visualizzare le quantita' anche
    in scale logaritmica. Le prestazioni da strutture private sono
    evidenziate in rosso.

-   `azienda` dove sono riportate le prestazioni di sintesi per la
    singola azienda. Nell'asse X si ha o la sommatoria delle prestazioni
    erogate, o il numero di osservazioni per la singola entita in Y.
    Nell'asse Y si hanno tutte le discipline erogate dalla azienda
    scelta. E' possibile visualizzare le quantita' anche in scale
    logaritmica. Le prestazioni da strutture private sono evidenziate in
    rosso.

### Fonte

Sul sito dedicati agli [Opendata Piemonte](http://www.dati.piemonte.it)
sono state pubblicate le [Prestazioni sanitarie erogate nell'anno
2012](http://www.dati.piemonte.it/catalogodati/dato/100742-prestazioni-sanitarie-erogate-per-tipologia-di-prestazione.html).

Nel dataset sono riportati i volumi di `prestazioni sanitarie`, intesi
come quantità di prestazioni erogate per azienda sanitaria, nell'anno
2012 a livello regionale, con l'evidenza della tipologia di struttura
erogatrice ( pubblica o privata), del codice di prestazione e della
relativa branca o disciplina specialistica.

La base informativa comprende:

-   il dataset delle prestazioni (con 295643 osservazioni su 5
    variabili);

-   l'elenco delle Discipline (con 43 osservazioni utilizzate delle 79
    presenti),

-   l'elenco delle Aziende Sanitarie (con 29 aziende riportate).

Il catalogo delle `prestazioni specialistiche sanitarie` si riferisce
come da descrizione all': *elenco delle prestazioni erogate dalla
Regione Piemonte ai sensi della DGR 11-6036 del 02 luglio 2013,
effettuate a livello ambulatoriale e non ambulatoriale o riferite a
particolari attivita' svolte in attuazione di funzioni specificatamente
attribuite, erogabili nell' ambito del servizio sanitario regionale .*

Il codice dell'applicazione e' disponibile
[qui](https://github.com/varmatieto/sanita_3one/)

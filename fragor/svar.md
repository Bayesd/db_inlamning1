# Frågor
###### *1. Var hittar man log-filerna för databaserna? (MySQL / MariaDB, och MongoDB)*  

I Linux/GNU är det vanligaste directoryn för log-filer:  

    /var/log/  

Log-filer från MariaDB går att finna i:  

    /var/log/mysql
    
    /root/.mysql_history
    
Att ändra var logfiler sparas görs i:
    
    /etc/mysql/mariadb.conf.d/50-server.cnf

Log-filerna från MongoDB går att finna i:  

    /var/log/mongodb 

Att ändra var ska logfiler sparas görs i:  

    /etc/mongod.conf
    
###### *2. Vad är skillnaden mellan en SQL databas som MySQL / MariaDB och en NoSQL databas som MongoDB?*

En skillnad är språket som används, MySQL/MariaDB använder SQL (Structured Query Language) och MongoDB använder sig av JavaScript. Det finns NoSQL databaser som stöder SQL men MongoDB är inte en av dem.

En annan skillnad är hur datan lagras. I MySQL/MariaDB lagras datan på rader i tabeller och i MongoDB lagras datan i dokument inuti collections. 
I  MySQL/MariaDB behöver tabeller formatteras/definieras innan någon data kan införas, medans det inte behövs i MongoDB.
I MongoDB lagras all data i dokument i sk. "Key/Value"- par, dessa kan struktureras på vilket sätt som helst så länge de följer JSON formatet. Flera dokument med totalt olika utförande kan utgöra en collection men en tabell kommer ha samma kolumner för alla rader. 

###### *3. Vad finns det för likheter mellan databaserna?*  

Båda databaserna är utformade med CRUD-funktionalitet. Create, Read, Update och Delete. De kan båda hantera relationer mellan tabeller (för MySQL) / collections (för MongoDB).

###### *4. Fundera, när vill man välja en SQL databas, och när vi vill man välja en NoSQL databas?*

En SQL databas är fördelaktig när datan som skall finnas i databasen är av en bestämd typ och det finns fördelar med en tydlig struktur i hur datan lagras. En tabell är i regel mer lättverskådlig än vad ett JSON objekt är.
Om det ska lagras data med känslig uppgifter kan SQL också vara att föredra då det är enkelt att skapa en tabell med den känsliga datan, begränsa tillgång till tabellen och skapa relationer mellan denna och andra tabeller.
SQL har ockås till sin fördel att det har funnits länge och används i väldigt stor utsträckning, vilket innebär att det finns en ackumulerad kunskap för SQL-databaser som överträffar den för NoSQL-databaser.

En NoSQL databas är fördelaktig när du vill lagra data som inte följer en regelbunden struktur, eftersom varje dokument kan ha en helt unik utformning inom JSON/BSON-formatet.

SQL är långsammare när det kommer till vissa typer av Read-förfrågningar än vad MongoDB är. Är det viktigt att ha hög hastighet i sökförfrågningar så rekommenderas generellt NoSQL framför SQL. 

SQL är inte skalbart på den horisontella axeln utan enbart på den vertikala, vilket innebär att ny data som följer det definierade formatet kan föras in väldigt effektivt, men när projekt är såpass stora att de behöver tänka igenom skalbarhet så kommer förmodligen båda typerna av databaser användas för att bidra med sina respektive styrkor.

###### *5. Om du ger en annan part tillgång till din databas, vad är då viktigt att tänka på? (Generell fråga, du behöver inte svara för båda databaserna)*  

Det är viktigt att tänka på vilken information du vill att parten ska få tillgång till.
Till att börja med vill du skapa en ny användare som du tilldelar de rättigheter som du vill att parten ska ha.
Behöver de endast kunna läsa information så ska du enbart tilldela läsrättigheter till användaren.
Behöver de enbart tillgång till en databas eller kanske t.o.m. en tabell så bör du även specificera det och dubbelkolla att rättigheterna stämmer innan du delar med dig av uppgifterna till den andra parten.
Det är även viktigt att ändra i konfigurationsfilen ifall den begränsar andra än lokala användare, så att den andra parten tillåts att ansluta från därifrån den behöver ansluta.

###### *6. Vad för typ av information kan vara känsligt / problematiskt att spara in en databas när det kommer till tex GDPR?*  

Personuppgifter, dvs. all information som direkt eller indirekt kan knytas till en levande person.
Det kan till exempel vara namn, adress, personnummer, telefonnummer, fotografier m.m.

###### *7. Nämn några SQL-databaser, samt några NoSQL-databaser.*  

SQL:
MySQL/MariaDB, SQLite, Sybase, PostgreSQL, Oracle

NoSQL:
MongoDB, Riak, Cassandra, ElasticSearch, HBase


###### *8. Om flera företag, organisationer eller personer använder samma databas, varför är det då viktigt att sätta upp separata användare i databasen för dessa parter?*  

Genom att sätta upp flera användare kan vi tilldela rättigheter till de olika användarna. Detta är önsvärt eftersom vi inte vill att Företag X ska ha insyn i Företag Y's data.
De olika användarna har enbart rättigheter att komma åt sitt respektive företags data och kan inte ens se att det finns annan data i databasen. 

Det är även bra att skapa flera användare för de olika företagen med olika nivåer av rättigheter. En typ av användare kanske enbart ska ha läsrättigheter, en annan kanske ska ha möjlighet att föra in ny data, en tredje ska kunna uppdatera och korrigera och en fjärde ska ha möjlighet att radera. Även olika kombinationer av rättigheter kan vara nödvändigt.

Om det med databas syftas på en specifik databas inuti MariaDB eller MongoDb, så är det viktigt att användarna enbart ges tillgång till de specifika tabeller/collections som rör deras företag, av samma anledning som i andra meningen av detta svar. 

###### *9.  Vilka delar i CRUD påverkar / gör ändringar i databasen, och vilka delar i CRUD gör inte det?*  

Create, Update och Delete gör alla förändringar i databaser. Create skapar något nytt, Update modifierar något befintligt och Delete tar bort någonting befintligt.

Read påverkar inte databasen eftersom den enbart läser information.


###### *10.  Hur ansluter man till någon annans databas från terminalen?*  
*(Visa både på MySQL och MongoDB)*

Exempel:
- Ip-adress: 45.101.40.75
- Username: guest
- Password: abc123
- Portar: Default
- Database namn: test


MySQL/MariaDB:

    # mysql -h 45.101.40.75 -P 3306 -u guest -p test 

MongoDB

    # mongo -h 45.101.40.75:27017 -u guest -p test

*-h = host -P = port -u = username -p = password prompt*

# Frågor
###### *1. Var hittar man log-filerna för databaserna? (MySQL / MariaDB, och MongoDB)*  

I Linux/GNU är det vanligaste directoryn för log-filer:  
    /var/log/  
Log-filer från MariaDB går att finna i  
    **/var/log/mysql**  
Log-filerna från MongoDB går att finna i  
    **/var/log/mongodb**  

###### *2. Vad är skillnaden mellan en SQL databas som MySQL / MariaDB och en NoSQL databas som MongoDB?*



###### *3. Vad finns det för likheter mellan databaserna?*  



###### *4. Fundera, när vill man välja en SQL databas, och när vi vill man välja en NoSQL databas?*



###### *5. Om du ger en annan part tillgång till din databas, vad är då viktigt att tänka på? (Generell fråga, du behöver inte svara för båda databaserna)*  



###### *6. Vad för typ av information kan vara känsligt / problematiskt att spara in en databas när det kommer till tex GDPR?*  



###### *7. Nämn några SQL-databaser, samt några NoSQL-databaser.*  



###### *8. Om flera företag, organisationer eller personer använder samma databas, varför är det då viktigt att sätta upp separata användare i databasen för dessa parter?*  



###### *9.  Vilka delar i CRUD påverkar / gör ändringar i databasen, och vilka delar i CRUD gör inte det?*  



###### *10.  Hur ansluter man till någon annans databas från terminalen?*  
*(Visa både på MySQL och MongoDB)*

    # mysql -u [username] -p [password] [hostname]

    > db = connect("localhost:27017/myDatabase")


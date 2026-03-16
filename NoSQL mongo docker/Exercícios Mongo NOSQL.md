# Exercícios Mongo NOSQL

## Questões 01, 02 e 03:

```jsx
select * from dbo.apolice for json auto

select * from dbo.carro for json auto

select * from dbo.cliente for json auto

select * from dbo.sinistro for json auto 

>db.apolice.insertMany([{"cod_apolice":202200001,"cod_cliente":1,"data_inicio_vigencia":"2021-02-24","data_fim_vigencia":"2022-02-24","valor_cobertura":2565.25,"valor_franquia":100.25,"placa":"MZT1826"},{"cod_apolice":202200010,"cod_cliente":1,"data_inicio_vigencia":"2021-08-24","data_fim_vigencia":"2022-08-24","valor_cobertura":9425.25,"valor_franquia":68.64,"placa":"NAP5760"},{"cod_apolice":202200012,"cod_cliente":1,"data_inicio_vigencia":"2022-05-24","data_fim_vigencia":"2023-05-24","valor_cobertura":19970.84,"valor_franquia":157.80,"placa":"CCR8096"},{"cod_apolice":202200007,"cod_cliente":2,"data_inicio_vigencia":"2022-11-24","data_fim_vigencia":"2023-11-24","valor_cobertura":19509.51,"valor_franquia":61.00,"placa":"NFT2212"},{"cod_apolice":202200011,"cod_cliente":2,"data_inicio_vigencia":"2022-12-24","data_fim_vigencia":"2023-12-24","valor_cobertura":7865.55,"valor_franquia":89.16,"placa":"ALD3834"},{"cod_apolice":202200003,"cod_cliente":3,"data_inicio_vigencia":"2023-02-24","data_fim_vigencia":"2024-02-24","valor_cobertura":19456.46,"valor_franquia":146.99,"placa":"JIE0952"},{"cod_apolice":202200004,"cod_cliente":3,"data_inicio_vigencia":"2021-10-24","data_fim_vigencia":"2022-10-24","valor_cobertura":4615.60,"valor_franquia":47.77,"placa":"LVX7086"},{"cod_apolice":202200005,"cod_cliente":3,"data_inicio_vigencia":"2022-10-24","data_fim_vigencia":"2023-10-24","valor_cobertura":19130.12,"valor_franquia":181.57,"placa":"LWJ9156"},{"cod_apolice":202200016,"cod_cliente":3,"data_inicio_vigencia":"2022-06-24","data_fim_vigencia":"2023-06-24","valor_cobertura":15760.31,"valor_franquia":132.84,"placa":"EEE1056"},{"cod_apolice":202200014,"cod_cliente":4,"data_inicio_vigencia":"2021-12-24","data_fim_vigencia":"2022-12-24","valor_cobertura":15040.52,"valor_franquia":161.51,"placa":"GQY6753"},{"cod_apolice":202200015,"cod_cliente":4,"data_inicio_vigencia":"2023-02-24","data_fim_vigencia":"2024-02-24","valor_cobertura":16261.87,"valor_franquia":180.20,"placa":"DLA3438"},{"cod_apolice":202200009,"cod_cliente":6,"data_inicio_vigencia":"2023-03-24","data_fim_vigencia":"2024-03-24","valor_cobertura":17561.01,"valor_franquia":169.48,"placa":"FFR1234"},{"cod_apolice":202200002,"cod_cliente":7,"data_inicio_vigencia":"2022-02-24","data_fim_vigencia":"2023-02-24","valor_cobertura":16081.90,"valor_franquia":28.79,"placa":"NEM5116"},{"cod_apolice":202200006,"cod_cliente":7,"data_inicio_vigencia":"2022-02-24","data_fim_vigencia":"2023-02-24","valor_cobertura":12595.89,"valor_franquia":20.45,"placa":"IAC8974"},{"cod_apolice":202200008,"cod_cliente":7,"data_inicio_vigencia":"2022-10-24","data_fim_vigencia":"2023-10-24","valor_cobertura":6815.28,"valor_franquia":145.16,"placa":"IAC8974"},{"cod_apolice":202200013,"cod_cliente":7,"data_inicio_vigencia":"2023-03-24","data_fim_vigencia":"2024-03-24","valor_cobertura":2737.30,"valor_franquia":25.81,"placa":"IAC8974"}])
{
        "acknowledged" : true,
        "insertedIds" : [
                ObjectId("69b0ad3c537a98f3d13f9458"),
                ObjectId("69b0ad3c537a98f3d13f9459"),
                ObjectId("69b0ad3c537a98f3d13f945a"),
                ObjectId("69b0ad3c537a98f3d13f945b"),
                ObjectId("69b0ad3c537a98f3d13f945c"),
                ObjectId("69b0ad3c537a98f3d13f945d"),
                ObjectId("69b0ad3c537a98f3d13f945e"),
                ObjectId("69b0ad3c537a98f3d13f945f"),
                ObjectId("69b0ad3c537a98f3d13f9460"),
                ObjectId("69b0ad3c537a98f3d13f9461"),
                ObjectId("69b0ad3c537a98f3d13f9462"),
                ObjectId("69b0ad3c537a98f3d13f9463"),
                ObjectId("69b0ad3c537a98f3d13f9464"),
                ObjectId("69b0ad3c537a98f3d13f9465"),
                ObjectId("69b0ad3c537a98f3d13f9466"),
                ObjectId("69b0ad3c537a98f3d13f9467")
        ]
}
> db.carro.insertMany([{"placa":"ALD3834","modelo":"CLIO","chassi":"34574215969","marca":"RENAULT","ano":2011,"cor":"BRANCO"},{"placa":"CCR8096","modelo":"CRETA","chassi":"88547875547","marca":"HYUNDAI","ano":2020,"cor":"BRANCO"},{"placa":"DLA3438","modelo":"PUNTO","chassi":"98823483434","marca":"FIAT","ano":2013,"cor":"PRETO"},{"placa":"EEE1056","modelo":"ECO SPORT","chassi":"56753453455","marca":"FORD","ano":2020,"cor":"AZUL"},{"placa":"FFR1234","modelo":"PALIO","chassi":"32383478747","marca":"FIAT","ano":2009,"cor":"AMARELO"},{"placa":"GQY6753","modelo":"S10","chassi":"72004160549","marca":"GM","ano":2015,"cor":"PRETO"},{"placa":"IAC8974","modelo":"TIGUAN","chassi":"77130757746","marca":"VOLKSWAGEN","ano":2022,"cor":"AZUL"},{"placa":"JIE0952","modelo":"PASSAT","chassi":"87493270405","marca":"VOLKSWAGEN","ano":2016,"cor":"CINZA"},{"placa":"JNU7898","modelo":"2020","chassi":"87628347687","marca":"FORD","ano":2020,"cor":"VERDE"},{"placa":"LVX7086","modelo":"SANDERO","chassi":"00025131958","marca":"RENAULT","ano":1999,"cor":"VERMELHO"},{"placa":"LWJ9156","modelo":"ONIX","chassi":"40991078801","marca":"GM","ano":2015,"cor":"AZUL"},{"placa":"MZT1826","modelo":"GOL","chassi":"41150439528","marca":"VOLKSWAGEN","ano":1998,"cor":"AMARELO"},{"placa":"NAP5760","modelo":"COMPASS","chassi":"40364369549","marca":"JEEP","ano":2017,"cor":"PRETO"},{"placa":"NEM5116","modelo":"2008","chassi":"69469771523","marca":"PEUGEOT","ano":2018,"cor":"PRETO"},{"placa":"NFT2212","modelo":"KWID","chassi":"12344343433","marca":"RENAULT","ano":2023,"cor":"BRANCO"}])
{
        "acknowledged" : true,
        "insertedIds" : [
                ObjectId("69b0ad58537a98f3d13f9468"),
                ObjectId("69b0ad58537a98f3d13f9469"),
                ObjectId("69b0ad58537a98f3d13f946a"),
                ObjectId("69b0ad58537a98f3d13f946b"),
                ObjectId("69b0ad58537a98f3d13f946c"),
                ObjectId("69b0ad58537a98f3d13f946d"),
                ObjectId("69b0ad58537a98f3d13f946e"),
                ObjectId("69b0ad58537a98f3d13f946f"),
                ObjectId("69b0ad58537a98f3d13f9470"),
                ObjectId("69b0ad58537a98f3d13f9471"),
                ObjectId("69b0ad58537a98f3d13f9472"),
                ObjectId("69b0ad58537a98f3d13f9473"),
                ObjectId("69b0ad58537a98f3d13f9474"),
                ObjectId("69b0ad58537a98f3d13f9475"),
                ObjectId("69b0ad58537a98f3d13f9476")
        ]
}
> db.cliente.insertMany([{"cod_cliente":1,"nome":"MARISA MELO OLIVEIRA","cpf":"11111111111","sexo":"F","endereco":"RUA JOSÃ‰ WOSCH SOBRINHO, 1938","telefone_fixo":"(41) 5096-4117","telefone_celular":"(41) 5096-4117"},{"cod_cliente":2,"nome":"MURILO CARVALHO CARDOSO","cpf":"22222222222","sexo":"M","endereco":"RUA GEORGE BERNANOS, 122800","telefone_fixo":"(21) 3944-5385"},{"cod_cliente":3,"nome":"VINICIUS ROCHA RODRIGUES","cpf":"33333333333","sexo":"M"},{"cod_cliente":4,"nome":"CAROLINA ROCHA GOMES","cpf":"44444444444","sexo":"F"},{"cod_cliente":5,"nome":"ALINE SANTOS CASTRO","cpf":"55555555555","sexo":"F","endereco":"RUA ARMANDO PACAGNELLA, 1259","telefone_fixo":"(19) 7287-2893","telefone_celular":"(19) 7287-2893"},{"cod_cliente":6,"nome":"LEILA CORREIA CAVALCANTI","cpf":"66666666666","sexo":"F","endereco":"RUA FRANCISCO D'ARAGE, 930"},{"cod_cliente":7,"nome":"SOPHIA CORREIA SANTOS","cpf":"77777777777","sexo":"F","endereco":"RUA JOÃƒO FORTES, 372","telefone_fixo":"(49) 8269-6660","telefone_celular":"(49) 8269-6660"},{"cod_cliente":8,"nome":"JOÃƒO CORREIA COSTA","cpf":"88888888888","sexo":"M","endereco":"RUA PARAGUÃ, 526","telefone_fixo":"(51) 7774-2809","telefone_celular":"(51) 7774-2809"},{"cod_cliente":9,"nome":"RAFAEL DIAS SOUZA","cpf":"99999999999","sexo":"M","endereco":"RUA MARIA MARCHI VISSALI, 74","telefone_fixo":"(16) 7459-3139","telefone_celular":"(16) 7459-3139"}])
{
        "acknowledged" : true,
        "insertedIds" : [
                ObjectId("69b0ad66537a98f3d13f9477"),
                ObjectId("69b0ad66537a98f3d13f9478"),
                ObjectId("69b0ad66537a98f3d13f9479"),
                ObjectId("69b0ad66537a98f3d13f947a"),
                ObjectId("69b0ad66537a98f3d13f947b"),
                ObjectId("69b0ad66537a98f3d13f947c"),
                ObjectId("69b0ad66537a98f3d13f947d"),
                ObjectId("69b0ad66537a98f3d13f947e"),
                ObjectId("69b0ad66537a98f3d13f947f")
        ]
}
> db.sinistro.insertMany([{"cod_sinistro":202255501,"placa":"ALD3834","data_sinistro":"2022-10-30","hora_sinistro":"11:00:00","local_sinistro":"CRICIUMA","condutor":"ARAUJO                                                                                              "},{"cod_sinistro":202255502,"placa":"GQY6753","data_sinistro":"2022-11-20","hora_sinistro":"10:34:00","local_sinistro":"ICARA","condutor":"CARDOSO                                                                                             "},{"cod_sinistro":202255503,"placa":"IAC8974","data_sinistro":"2022-05-24","hora_sinistro":"22:40:00","local_sinistro":"TUBARAO","condutor":"CUNHA                                                                                               "},{"cod_sinistro":202255504,"placa":"LVX7086","data_sinistro":"2023-01-25","hora_sinistro":"07:37:00","local_sinistro":"URUSSANGA","condutor":"SILVA                                                                                               "},{"cod_sinistro":202255505,"placa":"MZT1826","data_sinistro":"2024-03-27","hora_sinistro":"15:40:00","local_sinistro":"SIDEROPOLIS","condutor":"LUIZ                                                                                                "},{"cod_sinistro":202255506,"placa":"MZT1826","data_sinistro":"2023-10-20","hora_sinistro":"16:00:00","local_sinistro":"FLORIANOPOLIS","condutor":"JOAO                                                                                                "},{"cod_sinistro":202255507,"placa":"MZT1826","data_sinistro":"2022-05-08","hora_sinistro":"18:00:00","local_sinistro":"NOVA VENEZA","condutor":"LUCAS                                                                                               "},{"cod_sinistro":202255508,"placa":"IAC8974","data_sinistro":"2022-08-08","hora_sinistro":"21:00:00","local_sinistro":"CRICIUMA","condutor":"PEDRO                                                                                               "}])
{
        "acknowledged" : true,
        "insertedIds" : [
                ObjectId("69b0ad80537a98f3d13f9480"),
                ObjectId("69b0ad80537a98f3d13f9481"),
                ObjectId("69b0ad80537a98f3d13f9482"),
                ObjectId("69b0ad80537a98f3d13f9483"),
                ObjectId("69b0ad80537a98f3d13f9484"),
                ObjectId("69b0ad80537a98f3d13f9485"),
                ObjectId("69b0ad80537a98f3d13f9486"),
                ObjectId("69b0ad80537a98f3d13f9487")
        ]
}

```

## Questão 04:

```jsx
> db.cliente.deleteOne({ cod_cliente: 9 })
```

## Questão 05:

```jsx
> db.apolice.deleteOne({ cod_apolice: 202200013})
```

## Questão 06:

```jsx
db.sinistro.updateOne(
...   { cod_sinistro: 202255501 },
...   { $set: { condutor: "NANDO" } }
... )
```

## Questão 07:

```jsx
db.sinistro.find({placa: 'MZT1826'})
{ "_id" : ObjectId("69b0ad80537a98f3d13f9484"), "cod_sinistro" : 202255505, "placa" : "MZT1826", "data_sinistro" : "2024-03-27", "hora_sinistro" : "15:40:00", "local_sinistro" : "SIDEROPOLIS", "condutor" : "LUIZ                                                                                                " }
{ "_id" : ObjectId("69b0ad80537a98f3d13f9485"), "cod_sinistro" : 202255506, "placa" : "MZT1826", "data_sinistro" : "2023-10-20", "hora_sinistro" : "16:00:00", "local_sinistro" : "FLORIANOPOLIS", "condutor" : "JOAO                                                                                                " }
{ "_id" : ObjectId("69b0ad80537a98f3d13f9486"), "cod_sinistro" : 202255507, "placa" : "MZT1826", "data_sinistro" : "2022-05-08", "hora_sinistro" : "18:00:00", "local_sinistro" : "NOVA VENEZA", "condutor" : "LUCAS                                                                                               " }
```

## Questão 08

```jsx
db.carro.find({marca: 'RENAULT', cor: 'BRANCO'})
{ "_id" : ObjectId("69b0ad58537a98f3d13f9468"), "placa" : "ALD3834", "modelo" : "CLIO", "chassi" : "34574215969", "marca" : "RENAULT", "ano" : 2011, "cor" : "BRANCO" }
{ "_id" : ObjectId("69b0ad58537a98f3d13f9476"), "placa" : "NFT2212", "modelo" : "KWID", "chassi" : "12344343433", "marca" : "RENAULT", "ano" : 2023, "cor" : "BRANCO" }
```

## Questão 09:

```jsx
db.carro.find({ $or: [ { marca: "GM" }, { ano: 2020 } ] })
{ "_id" : ObjectId("69b0ad58537a98f3d13f9469"), "placa" : "CCR8096", "modelo" : "CRETA", "chassi" : "88547875547", "marca" : "HYUNDAI", "ano" : 2020, "cor" : "BRANCO" }
{ "_id" : ObjectId("69b0ad58537a98f3d13f946b"), "placa" : "EEE1056", "modelo" : "ECO SPORT", "chassi" : "56753453455", "marca" : "FORD", "ano" : 2020, "cor" : "AZUL" }
{ "_id" : ObjectId("69b0ad58537a98f3d13f946d"), "placa" : "GQY6753", "modelo" : "S10", "chassi" : "72004160549", "marca" : "GM", "ano" : 2015, "cor" : "PRETO" }
{ "_id" : ObjectId("69b0ad58537a98f3d13f9470"), "placa" : "JNU7898", "modelo" : "2020", "chassi" : "87628347687", "marca" : "FORD", "ano" : 2020, "cor" : "VERDE" }
{ "_id" : ObjectId("69b0ad58537a98f3d13f9472"), "placa" : "LWJ9156", "modelo" : "ONIX", "chassi" : "40991078801", "marca" : "GM", "ano" : 2015, "cor" : "AZUL" }
```

## Questão 10:

```jsx
root@L-1-10-43-22:~# docker ps -a
CONTAINER ID   IMAGE                       COMMAND                  CREATED             STATUS                   PORTS                                             NAMES
c7ce7d110e52   jlsilva01/mongodb           "docker-entrypoint.s…"   About an hour ago   Up About an hour         0.0.0.0:27017->27017/tcp, [::]:27017->27017/tcp   mongodb
f71926b18c2a   jlsilva01/satc-sql-server   "/opt/mssql/bin/perm…"   About an hour ago   Up About an hour         0.0.0.0:1433->1433/tcp, [::]:1433->1433/tcp       satc-sql-server
801fd3c038ae   mysql                       "docker-entrypoint.s…"   2 weeks ago         Exited (0) 2 weeks ago                                                     mysql
root@L-1-10-43-22:~# docker cp c7ce7d110e52:/cliente.json
docker: 'docker cp' requires 2 arguments

Usage:  docker cp [OPTIONS] CONTAINER:SRC_PATH DEST_PATH|-
        docker cp [OPTIONS] SRC_PATH|- CONTAINER:DEST_PATH

Run 'docker cp --help' for more information
root@L-1-10-43-22:~# docker cp c7ce7d110e52:/cliente.json .
Successfully copied 3.58kB to /root/.
root@L-1-10-43-22:~# docker cp c7ce7d110e52:/sinistro.json .
Successfully copied 4.1kB to /root/.
root@L-1-10-43-22:~# docker cp c7ce7d110e52:/carrio.json .
Error response from daemon: Could not find the file /carrio.json in container c7ce7d110e52
root@L-1-10-43-22:~# docker cp c7ce7d110e52:/carro.json .
Successfully copied 4.1kB to /root/.
root@L-1-10-43-22:~# docker cp c7ce7d110e52:/apolice.json .
Successfully copied 5.12kB to /root/.
root@L-1-10-43-22:~# mkdir ~/backup_mongo
root@L-1-10-43-22:~# docker cp c7ce7d110e52:/cliente.json ~/backup_mongo/
docker cp c7ce7d110e52:/carro.json ~/backup_mongo/
docker cp c7ce7d110e52:/apolice.json ~/backup_mongo/
docker cp c7ce7d110e52:/sinistro.json ~/backup_mongo/
Successfully copied 3.58kB to /root/backup_mongo/
Successfully copied 4.1kB to /root/backup_mongo/
Successfully copied 5.12kB to /root/backup_mongo/
Successfully copied 4.1kB to /root/backup_mongo/
root@L-1-10-43-22:~# mongo
```

## Questões 11 e 12:

```jsx
> use seguro
switched to db seguro
> show collections
apolice
carro
cliente
sinistro
> db.cliente.drop()
)
db.apolice.drop()
db.sinistro.drop()true
> db.carro.drop()
true
> db.apolice.drop()
true
> db.sinistro.drop()
true
> use seguro
switched to db seguro
> db.dropDatabase()
{ "dropped" : "seguro", "ok" : 1 }
> show dbs
admin   0.000GB
config  0.000GB
local   0.000GB
>
```

## Questões 13 e 14:

```jsx
root@L-1-10-43-22:~# docker exec -i c7ce7d110e52 mongoimport --db seguro2 --collection cliente --file /cliente.json
docker exec -i c7ce7d110e52 mongoimport --db seguro2 --collection carro --file /carro.json
docker exec -i c7ce7d110e52 mongoimport --db seguro2 --collection apolice --file /apolice.json
docker exec -i c7ce7d110e52 mongoimport --db seguro2 --collection sinistro --file /sinistro.json
2026-03-11T00:18:35.372+0000    connected to: mongodb://localhost/
2026-03-11T00:18:35.405+0000    8 document(s) imported successfully. 0 document(s) failed to import.
2026-03-11T00:18:35.518+0000    connected to: mongodb://localhost/
2026-03-11T00:18:35.534+0000    15 document(s) imported successfully. 0 document(s) failed to import.
2026-03-11T00:18:35.638+0000    connected to: mongodb://localhost/
2026-03-11T00:18:35.654+0000    15 document(s) imported successfully. 0 document(s) failed to import.
2026-03-11T00:18:35.774+0000    connected to: mongodb://localhost/
2026-03-11T00:18:35.788+0000    8 document(s) imported successfully. 0 document(s) failed to import.
root@L-1-10-43-22:~# mongoexport --db seguro --collection cliente --out cliente.json --jsonArray
mongoexport: command not found
root@L-1-10-43-22:~# docker exec -it c7ce7d110e52 mongo
use seguro2
db.cliente.find().pretty()
db.carro.find().pretty()
MongoDB shell version v4.4.29
connecting to: mongodb://127.0.0.1:27017/?compressors=disabled&gssapiServiceName=mongodb
Implicit session: session { "id" : UUID("559bdd01-0faa-4f83-b7f7-ccfb0ec71b17") }
MongoDB server version: 4.4.29
---
The server generated these startup warnings when booting:
        2026-03-10T23:02:01.419+00:00: Using the XFS filesystem is strongly recommended with the WiredTiger storage engine. See http://dochub.mongodb.org/core/prodnotes-filesystem
        2026-03-10T23:02:01.744+00:00: Access control is not enabled for the database. Read and write access to data and configuration is unrestricted
        2026-03-10T23:02:01.744+00:00: Soft rlimits too low
        2026-03-10T23:02:01.744+00:00:         currentValue: 1024
        2026-03-10T23:02:01.744+00:00:         recommendedMinimum: 64000
---
> use seguro
switched to db seguro
> show collections
> use seguro2
switched to db seguro2
> show collections
apolice
carro
cliente
sinistro
>
```
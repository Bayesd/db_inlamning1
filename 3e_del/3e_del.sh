mongo --eval 'db.locations.insertOne({"country":"Sweden", "address":"Plåtslagaregatan 2"})' inlamning2

: '
> db.locations.find().pretty()
{
        "_id" : ObjectId("6012ec38d19b1f35943ad2f5"),
        "country" : "Sweden",
        "address" : "Plåtslagaregatan 2"
}
'

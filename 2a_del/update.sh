mongo --eval 'db.bank_accounts.update({$and:[{"first_name" : "Leo"},{"last_name" : "Möller"}]}, {$set:{"holding" : 0 }})' inlamning1

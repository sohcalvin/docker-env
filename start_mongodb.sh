docker run -p27017:27017 --name mymongo -d mongo
docker run -p27017:27017 --name mymongo -d mongo:3.0
###################
# With auth on 009
###################
docker run -p27027:27017 --name lr-mongodb -d mongo:3.0 --auth 

# then :
docker exec -it lr-mongodb mongo admin
db.createUser({user:'lradmin',pwd:'icn@sap.com', roles:[{ role:"userAdminAnyDatabase", db: "admin" } ] });
db.grantRolesToUser("lradmin", ["dbAdmin", "clusterMonitor"])


# the to login as admin 
docker exec -it lr-mongodb mongo admin -u lradmin -p icn@sap.com

# To create a user in lrdb
use lrdb    ## Need to switch to this first
db.createUser({user:'lr',pwd:'123123', roles:[{ role:"readWrite", db: "lrdb" } ] });


# to connect as admin
mongo --host localhost --port 27027 -u lradmin -p icn@sap.com admin


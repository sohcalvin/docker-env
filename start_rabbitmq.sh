docker run -d --hostname bunny-host --name bunny -p 15672:15672 -p 5672:5672 rabbitmq:3-management
docker run -d --hostname bunny-host --name bunny -p 15672:15672 -p 5672:5672 --memory="800m" --memory-swap="2g" rabbitmq:3-management
# Then goto 
#            http://192.168.99.100:15672/#/
# Login is 
#            guest/guest


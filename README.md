# game-of-maps

## Overview
A map application based on the guide [A Game of Maps](https://blog.patricktriest.com/game-of-thrones-map-node-postgres-redis/), which
leverages the following technologies:

- [NodeJS](https://nodejs.org/) 8.7 - Command-line / server-side JavaScript runtime
- [PostgreSQL](https://www.postgresql.org/) 9.6 - Open Source MySQL database with the [PostGIS](http://postgis.net/) extension installed
- [Redis](https://redis.io/) 3.2 - in-memory data(base) store
- [Docker](https://www.docker.com/) - although not part of the guide, Docker is a development and deployment tool which makes it easier to orchestrate the running of
and communication between containerized applications and services, like the ones used in this guide.

Demo of Game of Apps from the guide [here](https://atlasofthrones.com/)

## Getting Started
1. [Install](https://docs.docker.com/engine/installation/) Docker
1. Clone this repo

## Starting the App
1. In root for this repo, run `docker-compose up`
1. Open `localhost:8080`
1. To stop, run `docker-compose down`

### Helpful Commands
To get a shell into a container, list all containers then `exec` into it
1. `docker ps`
1. `docker exec -it <container name> /bin/bash`

To interact with PostgreSQL
```
root@3c7dfdf39b8d:/# psql -U postgres
psql (10.0)
Type "help" for help.

postgres=# SELECT 1;
 ?column?
----------
        1
(1 row)
postgres=# SELECT PostGIS_full_version();
                                                                             postgis_full_version
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
 POSTGIS="2.3.2 r15302" GEOS="3.4.2-CAPI-1.8.2 r3921" PROJ="Rel. 4.8.0, 6 March 2012" GDAL="GDAL 1.10.1, released 2013/08/26" LIBXML="2.9.1" LIBJSON="0.11.99" TOPOLOGY RASTER
(1 row)
postgres=# \q
root@3c7dfdf39b8d:/#
```

To interact with Redis
```
root@a04267dee920:~# which redis-cli
/usr/local/bin/redis-cli
root@a04267dee920:~# redis-cli
127.0.0.1:6379> ping
PONG
127.0.0.1:6379> exit
```

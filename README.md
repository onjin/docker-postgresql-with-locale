[![Docker Stars](https://img.shields.io/docker/stars/onjin/postgres.svg)](https://registry.hub.docker.com/r/onjin/postgres) [![Docker Pulls](https://img.shields.io/docker/pulls/onjin/postgres.svg)](https://registry.hub.docker.com/r/onjin/postgres)

# PostgreSQL images with certain locale set

## Build

User variables to build certain locale versions:
* SET_POSTGRES_VERSION - original `postgresql:XXX` image to use; f.e. `15`
* SET_LOCALE - database locale to use instead of en_US; f.e. `pl_PL`
* SET_ENCODING - database encoding to use instead of UTF-8; f.e. `UTF-8`
* SET_LANG - environment LANG to use instead of en_US.utf8; f.e. `pl_PL.utf8`

```shell
$ SET_POSTGRES_VERSION=13 SET_LOCALE=pl_PL SET_ENCODING=UTF-8 SET_LANG=pl_PL.utf8 ./hooks/build 
```

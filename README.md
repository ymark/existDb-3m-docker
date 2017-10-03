# README #

The repository contains the necessary resources that are required for creating a docker image for exist-db with the 
required database resources for working with 3M.

The image is build upon the docker image for eXist-db from [davidgaya/existdb](https://hub.docker.com/r/davidgaya/existdb/)

## ExistDb

eXist is an open source NoSQL database built on XML technology. It is classified as both a NoSQL Document database and a native XML database. eXist provides XQuery and XSLT as its query and application programming languages.
More information about eXist-Db are available at https://exist-db.org

## 3M

The 3M is a web application suite containing several software sub-components and exploiting several external services.
Its main functionality is to assist users during the mapping definition process, using a human-friendly user interface and a set of sub-components that either suggest or validate the user input.
More information about 3M and its related components can be found at http://www.ics.forth.gr/isl/X3MLToolkit

## How to use

The image creates a running instance of eXist-db, with the required 3M resources allready shipped in, so that it can work as the underlying layer of 3M framework. The container starts the eXist-db and listens for incoming connection at port 8080. The following environment variables are available for managing the existdb-3m container:

* EXIST_ADMIN_PASSWORD: allows the user defining the password for the admin user of the eXist-db running instance. If the variable is not set when running the container, then the default password will be used (admin)

## Docker image

The latest docker image (v 2.0) is available at docker hub under the repostory marketak

```
docker pull marketak/existdb-3m:2.0
```

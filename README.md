# Using Postgresql as DB


## Create instance on BTP



## npm add @cap-js/postgres

## cds env requires.db --for production

It should give this output :
{
	  impl: '@cap-js/postgres',
	  dialect: 'postgres',
	  kind: 'postgres'
}

## cds add postgres

1.  Adds  `@cap-js/postgres`  dependency to your  _package.json_  `dependencies`.
2.  Sets up deployment descriptors such as  _mta.yaml_  to use a PostgreSQL instance deployer application.
3.  Wires up the PostgreSQL service to your deployer app and CAP backend.

## change type in mta
If it gives error while creating the instance of postgresql on deployment. You should use the existing instance.So, the db module should look like that 
- name: postgresql-db
type: org.cloudfoundry.existing-service

# Access DB after Deployment

https://community.sap.com/t5/technology-blogs-by-sap/sap-btp-postgresql-ssh-tunnel-and-ssh-tunneling-explained/ba-p/13563049

## SSH tunnel

```abap
cf enable-ssh <YOUR-HOST-APP>

cf restage <YOUR-HOST-APP>

cf create-service-key MY-DB EXTERNAL-ACCESS-KEY

cf service-key MY-DB EXTERNAL-ACCESS-KEY

cf ssh -L 63306:<hostname>:<port> YOUR-HOST-APP

psql -d <dbname> -U <username> -p 63306 -h localhost
```
All values should be taken from the credentials of postgresql instance in BTP.

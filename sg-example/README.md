This is a sample code for experimenting with Continuum Service Gateways


Steps:

1.) Create a mysql provider using Continuum mysql provider tutorial

2.) Create a mysql service gateway using service gateway tutorial for redis

cd example-mysql-sg

Follow the steps of redis service gateway using example-mysql-sg

3.) Register a provider using custom service gateway and mysql provider

4.) Create client capsule from pssamplemysql and test the service gateway by first checking the environment variable MYSQL_URI inside the clientcapsule and then running the client program.


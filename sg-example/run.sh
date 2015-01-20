#!/bin/bash

cd example-mysql-sg
apc app create demo-mysql-sg-app --disable-routes
apc gateway promote demo-mysql-sg-app --type demo-mysql-sg

#apc capsule create cap-demo-mysql-base -p snapshot-cap-demo-mysql-provider  --allow-egress --batch

#apc app update cap-demo-mysql-base --port-add 3306
#apc provider register demo-mysql-provider --type demo-mysql-sg --job cap-demo-mysql-base - 3306 -url mysql://root:password@cap-demo-mysql-base
#apc provider list
#apc service create svc-demo-mysql-sg-service --provider demo-mysql-provider


#cd ..
#cd psamplemysql
#apc app create demo-mysql-app
#apc capsule create cap-demo-mysql-app -p demo-mysql-app -ae
#apc app stop cap-demo-mysql-app
#apc service bind svc-demo-mysql-sg-service -j cap-demo-mysql-app --name demomyqlbinding
#apc app start cap-demo-mysql-app

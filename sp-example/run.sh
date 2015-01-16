#!/bin/bash

apc service create svc-sample-sp-service --provider provider::/apcera/providers/::postgres

cd sp-auth-hook-no-delete

ap rule create denydelete --service svc-sample-sp-service -t hook --commands delete

cd psamplepostgres

apc app create sample-sp-app 
apc capsule create cap-sample-sp-app -p sample-sp-app -ae

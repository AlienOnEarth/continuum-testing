This code shows steps to experiment with Continuum Semantic Pipelines

Steps:

1.) Create a svc-postgresdb service using default postgres provider and default gateway.

apc service create svc-postgresdb --provider provider::/apcera/providers/::postgres


2.) Create a hook handler using below command:

cd sp-auth-hook-no-delete

apc rule create  denydelete-PG --service svc-postgresdb -t hook --commands delete

3.) Create a client app capsule using psamplepostgres

cd psamplepostgres

apc app create psampleapp

apc capsule create cappsampleapp -p psampleapp -ae

4.) run psampleapp from capsule cappsampleapp to test the hook handler.

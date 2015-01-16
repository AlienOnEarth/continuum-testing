apc target
apc login
apc capsule list
apc capsule show cap-mysql
apc capsule connect
apc capsule connect cap-mysql
apc capsule snapsho
apc capsule snapshot
apc capsule 
apc capsule export
apc capsule
apc capsule update cap-mysql --port-add 3306
apc provider register mysqldb --job cap-mysql -u mysql://root:password@cap-mysql
apc service create svc-mysqldb --provider mysqldb
ls
cd sg-example/
ls
cd psamplepostgres/
ls
vim samplepostgresql.py 
ls
vim test.sh 
ls
vim requirements.txt 
vim setup.py 
cd ..
ls
cd version-example/
ls
cp ../continuum-package-scripts/
cp ../continuum-package-scripts/runtimes/python-2.7.8.conf .
cp ../continuum-package-scripts/runtimes/python-3.3.5.conf .
cp ../continuum-package-scripts/runtimes/python-3.4.1.conf .
ls
vim python-
vim python-2.7.8.conf 
ls
vim python-3.3.5.conf 
vim python-3.4.1.conf 
ls
vim run.sh
apc package build python-2.7.8.conf 
apc package build python-3.3.5.conf 
apc package build python-3.4.1.conf 
vim version-policy.pol
apc policy import version-policy.pol 
apc policy list
cd ..
ls
cd sg-example/
;s
ls
apc app create testsgapp1
cd psamplepostgres/
apc app create testsgapp1
cd ..
ls
cd version-example/
ls
apc package list
apc app delete testsgapp1
apc package delete testsgapp1
vim test.py
ls
mkdir testapp
mv test.py  tes
ls
cd testapp/
cd ..
ls
rm test
cd testapp/
vim test.py
ls
apc app create testapp
apc package list
apc package delete testapp
apc policy delete version-policy
apc app create testapp
apc package delete testapp
ls
cd ..
ls
vim version-policy.pol 
apc package show python
apc package show python-2.7.8
vim version-policy.pol 
apc package show python-2.7.8
vim version-policy.pol 
apc policy import version-policy.pol 
cd ..
ls
cd version-example/
ls
cd testapp/
apc app create testapp
cd ..
ls
cd sg-example/
ls
cd psamplepostgres/
ls
apc app create testsgapp1
apc capsule create captestsgapp1 -p testsgapp1 --allow-egress
apc capsule connect captestsgapp1
cd ..
ls
cd example-redis-sg/
ls
vim app.rb 
apc app list
vim app.rb 
apc provider list
apc provider
apc provider show mysqldb
vim app.rb 
apc app create testsg
apc gateway promote testsg --type testsg
apc service list
apc provider list
apc provider delete mysqldb
apc service list
apc service delete svc-mysqldb
apc provider delete mysqldb
apc provider list
apc capsule list
apc provider register sg-mysql-provider --type testsg --job cap-mysql -port 3306 --url mysql://root:password@cap-mysql
apc service create svc-sg-mysql --provider sg-mysql-provider
apc service bind svc-sg-mysql -j captestsgapp1
apc capsule connect captestsgapp1
apc capsule show captestsgapp1
apc capsule connect captestsgapp1
cd ..
ls
cd version-example/
git remote add origin https://github.com/AlienOnEarth/continuumtesting.git
git init
cd ..
git add .
git init
git add README.md
touch README.md
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/AlienOnEarth/SimpleClientServer.git
git remote add origin https://github.com/AlienOnEarth/ContinuumTesting.git
exit

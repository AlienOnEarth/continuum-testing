This is an experiment with Continuum policies.

Steps:

1.) Create python package in "/sandbox/admin"
apc package build python-2.7.8.conf

apc package build python-3.3.5.conf

apc pacakge build python-3.4.1.conf

2.) Import policy into Continuum Environment
apc import policy version-policy.pol

3.) Create sample python client app to test whether correct policy writte in version-policy.pol has been applied.

cd testapp

apc app create version-test-app

============================================================
Vagrant Testing Environment for Jupyterhub CAS Authenticator
============================================================

If you have Vagrant set up with a VirtualBox backend, bring up a working
test environment with:

.. code::shell

    $ vagrant up

Port 8080 on the local machine will be forwarded to the test hub environment.
Port 8081 on the local machine will be forwarded to the test CAS environment.
Logging into http://localhost:8080/ should redirect the browser to CAS, where
you can sign in as one of the test accounts (see the `etc/cas/cas_users.passwd`
file).

Local users will be created on demand on the hub VM.


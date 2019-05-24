#! /bin/sh

# Update package list.
/usr/bin/apt-get -y update
# Install jupyterhub components.
/usr/bin/apt-get -y install python3-pip
/usr/bin/apt-get -y install -y npm
/usr/bin/npm install -g configurable-http-proxy
/usr/bin/python3 -m pip install -U pip
/usr/bin/python3 -m pip install jupyterhub
# Install the python3 Jupyter notebook.
/usr/bin/python3 -m pip install notebook
/usr/bin/python3 -m pip install matplotlib
/usr/bin/python3 -m pip install pandas
# Install Jupyterhub CAS Authenticator
/usr/bin/python3 -m pip install -e git+https://github.com/cwaldbieser/jhub_cas_authenticator.git#egg=jhub_cas_authenticator
# Copy jupyterhub config to target folder.
mkdir -p /srv/jupyterhub
cp /vagrant/srv/jupyterhub/jupyterhub_config.py /srv/jupyterhub/jupyterhub_config.py
# Copy jupyterhub service file.
cp /vagrant/etc/systemd/system/jupyterhub.service /etc/systemd/system/
# Start services.
/bin/systemctl start jupyterhub


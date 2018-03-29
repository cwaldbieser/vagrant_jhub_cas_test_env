#! /bin/sh

# Clone txcas repo.
cd /srv
/usr/bin/git clone 'https://github.com/cwaldbieser/txcas.git'
# Install OS dependencies.
/usr/bin/apt-get -y update
/usr/bin/apt-get -y install libffi-dev
/usr/bin/apt-get -y install libssl-dev
/usr/bin/apt-get -y install python-pip
/usr/bin/pip install virtualenv
# Create virtualenv and install Python dependencies.
cd /srv/txcas
/usr/local/bin/virtualenv pyenv
./pyenv/bin/pip install -r requirements.txt
# Install CAS configuration files.
mkdir /etc/cas
cp /vagrant/etc/cas/* /etc/cas/
# Install service file and start the service.
cp /vagrant/etc/systemd/system/cas.service /etc/systemd/system/cas.service
systemctl start cas

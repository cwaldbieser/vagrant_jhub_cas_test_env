


Vagrant.configure("2") do |config|

  config.vm.define "web" do |web|
    web.vm.box = "ubuntu/bionic64"
    web.vm.network "private_network", ip: "192.168.50.4"
    web.vm.network "forwarded_port", guest: 8000, host: 8080, host_ip: "127.0.0.1"
    web.vm.provision "shell", path: "./provision-jhub.sh"
  end

  config.vm.define "cas" do |cas|
    cas.vm.box = "ubuntu/bionic64"
    cas.vm.network "private_network", ip: "192.168.50.5"
    cas.vm.network "forwarded_port", guest: 8080, host: 8081, host_ip: "127.0.0.1"
    cas.vm.provision "shell", path: "./provision-cas.sh"
  end
end


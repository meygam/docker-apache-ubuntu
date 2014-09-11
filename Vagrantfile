# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "hashicorp/precise64"

  config.vm.network "forwarded_port", guest: 80, host: 18080

  config.vm.provision "docker" do |d|
    d.build_image "/vagrant", args: "-t speriyasamy/apache2"
    d.run "apache2", image: "speriyasamy/apache2", args: "-p 80:80"
  end
end

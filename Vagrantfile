# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

proxy = ENV['http_proxy'] || ""
hadoopver = ENV['hadoop_version'] || "2.6.3"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/wily64"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = 4096
    vb.cpus = 4
    # Needed for multiple CPUs
    vb.customize ["modifyvm", :id, "--ioapic", "on"]
  end

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "playbook.yml"
    ansible.extra_vars = {
      proxy_env: {
        http_proxy: proxy
      },
      hadoop_version: hadoopver
    }
  end

  config.vm.network "forwarded_port", guest: 50070, host: 50070
  config.vm.network "forwarded_port", guest: 8088, host: 8088
  config.vm.network "forwarded_port", guest: 19888, host: 19888

end

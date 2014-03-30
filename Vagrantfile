# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"
options = {}
options[:tag] = ENV['tag'] || 'app'
options[:version] = ENV['version'] || '2.1.1'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "cenos65"
  config.vm.provision :docker do |d|
    d.pull_images "centos"
  end

  config.vm.box_url = "https://github.com/2creatives/vagrant-centos/releases/download/v6.5.1/centos65-x86_64-20131205.box"
  config.vm.network :forwarded_port, guest: 8000, host: 8000
  config.ssh.forward_agent = true
  config.vm.synced_folder "project", "/home/vagrant/project"

  config.vm.provision "docker" do |d|
    d.pull_images "centos"
    d.build_image "./project", args: "-t #{options[:tag]}"
    #d.run image: "#{options[:tag]}", args: "-i -t -p 8000:8000 /bin/bash"
  end

end

# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"
options = {}
options[:tag] = ENV['tag'] || 'kazu69/ruby_versions'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "centos65"
  config.vm.box_url = "https://github.com/2creatives/vagrant-centos/releases/download/v6.5.1/centos65-x86_64-20131205.box"
  config.vm.network :forwarded_port, guest: 8080, host: 8000
  config.ssh.forward_agent = true
  config.vm.synced_folder "project", "/home/vagrant/project"

  config.vm.provision "docker" do |d|
    d.pull_images "centos"
    d.build_image "./project", args: "-t #{options[:tag]}"
  end

end

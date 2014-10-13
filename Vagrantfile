# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "trusty-server-cloudimg-amd64"
  config.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"

  config.vm.network :forwarded_port, guest: 3000, host: 3030
  config.vm.network :forwarded_port, guest: 4567, host: 3031

  config.vm.network :private_network, ip: "192.168.33.10"

  # Enable provisioning with chef solo, specifying a cookbooks path, roles
  # path, and data_bags path (all relative to this Vagrantfile), and adding
  # some recipes and/or roles.
  #
  config.berkshelf.enabled = true
  config.vm.provision :chef_solo do |chef|
  #  chef.cookbooks_path = "../my-recipes/cookbooks"
    chef.roles_path = "roles"
    chef.data_bags_path = "data_bags"

    chef.add_recipe "git"
  #  chef.add_role "web"

  #  # You may also specify custom JSON attributes:
  #  chef.json = { :mysql_password => "foo" }
  end
end

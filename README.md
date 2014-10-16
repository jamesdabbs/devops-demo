adduser deploy
passwd -l deploy

me@localhost $ ssh root@remote
    root@remote $ su - deploy
    deploy@remote $ cd ~
    deploy@remote $ mkdir .ssh
    deploy@remote $ echo "ssh-rsa jccXJ/JRfGxnkh/8iL........dbfCH/9cDiKa0Dw8XGAo01mU/w== /Users/me/.ssh/id_rsa" >> .ssh/authorized_keys
    deploy@remote $ chmod 700 .ssh
    deploy@remote $ chmod 600 .ssh/authorized_keys

me@localhost $ ssh deploy@one-of-my-servers.com 'hostname; uptime'

cap install

apt-get install -yq git
gem install bundler

cap production deploy

bundle exec ruby app.rb -o 0.0.0.0

add Berksfile
berks install
vagrant plugin install vagrant-berkshelf

{
  "id": “deploy, //or your user name
  // The following should be the result of openssl passwd -1 plainpasswd
  // but that's md5 on a mac. Alternatively run mkpasswd -m sha-512 -S mySalt on a linux machine
  "password": "$6$[...]098/",
  "ssh_keys": [
    // Copy paste from your ssh public key
    "ssh-rsa AAA123...xyz== foo"
    ],
  "groups": [ "sysadmin" ],
  "uid": 2001,
  "shell": "\/bin\/bash",
  "comment": ""
}

rackbox
dokku

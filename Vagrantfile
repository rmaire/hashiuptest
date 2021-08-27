Vagrant.configure("2") do |config|

  config.ssh.insert_key = false

  config.landrush.enabled = true
  config.landrush.tld = 'mycloud.dev'

  config.vm.define "first" do |first|
    first.vm.box = "ubuntu/focal64"
    first.vm.hostname = "first"
    first.vm.network "private_network", ip: "10.3.5.20"
    first.vm.hostname = "first.mycloud.dev"

    first.vm.provider "virtualbox" do |vb|
      vb.name = "first"
      vb.memory = 2048
      vb.cpus = 3
    end

    first.vm.provision "shell", inline: <<-EOF
      apt-get update
      apt-get -y upgrade
      apt-get -y install apt-transport-https ca-certificates curl gnupg-agent
      curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
      add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

      DEBIAN_FRONTEND=noninteractive apt-get -y update
      DEBIAN_FRONTEND=noninteractive apt-get  --no-install-recommends -y install docker-ce docker-ce-cli containerd.io

      systemctl start docker
      systemctl enable docker

      usermod -aG docker vagrant
    EOF
  end

  config.vm.define "second" do |second|
    second.vm.box = "ubuntu/focal64"
    second.vm.hostname = "second"
    second.vm.network "private_network", ip: "10.3.5.30"
    second.vm.hostname = "second.mycloud.dev"

    second.vm.provider "virtualbox" do |vb|
      vb.name = "second"
      vb.memory = 2048
      vb.cpus = 3
    end

    second.vm.provision "shell", inline: <<-EOF
      apt-get update
      apt-get -y upgrade
      apt-get -y install apt-transport-https ca-certificates curl gnupg-agent
      curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
      add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

      DEBIAN_FRONTEND=noninteractive apt-get -y update
      DEBIAN_FRONTEND=noninteractive apt-get  --no-install-recommends -y install docker-ce docker-ce-cli containerd.io

      systemctl start docker
      systemctl enable docker

      usermod -aG docker vagrant
    EOF
  end

  config.vm.define "third" do |third|
    third.vm.box = "ubuntu/bionic64"
    third.vm.hostname = "third"
    third.vm.network "private_network", ip: "10.3.5.40"
    third.vm.hostname = "third.mycloud.dev"

    third.vm.provider "virtualbox" do |vb|
      vb.name = "third"
      vb.memory = 2048
      vb.cpus = 3
    end

    third.vm.provision "shell", inline: <<-EOF
      apt-get update
      apt-get -y upgrade
      apt-get -y install apt-transport-https ca-certificates curl gnupg-agent
      curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
      add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

      DEBIAN_FRONTEND=noninteractive apt-get -y update
      DEBIAN_FRONTEND=noninteractive apt-get  --no-install-recommends -y install docker-ce docker-ce-cli containerd.io

      systemctl start docker
      systemctl enable docker

      usermod -aG docker vagrant
    EOF
  end

  config.vm.define "fourth" do |fourth|
    fourth.vm.box = "ubuntu/bionic64"
    fourth.vm.hostname = "third"
    fourth.vm.network "private_network", ip: "10.3.5.50"
    fourth.vm.hostname = "fourth.mycloud.dev"

    fourth.vm.provider "virtualbox" do |vb|
      vb.name = "fourth"
      vb.memory = 2048
      vb.cpus = 3
    end

    fourth.vm.provision "shell", inline: <<-EOF
      apt-get update
      apt-get -y upgrade
      apt-get -y install apt-transport-https ca-certificates curl gnupg-agent
      curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
      add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

      DEBIAN_FRONTEND=noninteractive apt-get -y update
      DEBIAN_FRONTEND=noninteractive apt-get  --no-install-recommends -y install docker-ce docker-ce-cli containerd.io

      systemctl start docker
      systemctl enable docker

      usermod -aG docker vagrant
    EOF
  end

  config.vm.define "fifth" do |fifth|
    fifth.vm.box = "ubuntu/bionic64"
    fifth.vm.hostname = "fifth"
    fifth.vm.network "private_network", ip: "10.3.5.60"
    fifth.vm.hostname = "fifth.mycloud.dev"

    fifth.vm.provider "virtualbox" do |vb|
      vb.name = "fifth"
      vb.memory = 2048
      vb.cpus = 3
    end

    fifth.vm.provision "shell", inline: <<-EOF
      apt-get update
      apt-get -y upgrade
      apt-get -y install apt-transport-https ca-certificates curl gnupg-agent
      curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
      add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

      DEBIAN_FRONTEND=noninteractive apt-get -y update
      DEBIAN_FRONTEND=noninteractive apt-get  --no-install-recommends -y install docker-ce docker-ce-cli containerd.io

      systemctl start docker
      systemctl enable docker

      usermod -aG docker vagrant
    EOF
  end

  config.vm.define "sixth" do |sixth|
    sixth.vm.box = "ubuntu/bionic64"
    sixth.vm.hostname = "sixth"
    sixth.vm.network "private_network", ip: "10.3.5.70"
    sixth.vm.hostname = "sixth.mycloud.dev"

    sixth.vm.provider "virtualbox" do |vb|
      vb.name = "sixth"
      vb.memory = 2048
      vb.cpus = 3
    end

    sixth.vm.provision "shell", inline: <<-EOF
      apt-get update
      apt-get -y upgrade
      apt-get -y install apt-transport-https ca-certificates curl gnupg-agent
      curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
      add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

      DEBIAN_FRONTEND=noninteractive apt-get -y update
      DEBIAN_FRONTEND=noninteractive apt-get  --no-install-recommends -y install docker-ce docker-ce-cli containerd.io

      systemctl start docker
      systemctl enable docker

      usermod -aG docker vagrant
    EOF
  end

    config.vm.define "tools" do |tools|
      tools.vm.box = "ubuntu/focal64"
      tools.vm.hostname = "tools"
      tools.vm.network "private_network", ip: "10.3.5.80"
      tools.vm.hostname = "tools.mycloud.dev"

      tools.vm.provider "virtualbox" do |vb|
        vb.name = "tools"
        vb.memory = 2048
        vb.cpus = 1
      end

      tools.vm.provision "shell", inline: <<-EOF
        curl -sLS https://get.hashi-up.dev | sh
      EOF
  end
end

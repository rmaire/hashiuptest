# install hostmanager plugin ad administrator/root:
# vagrant plugin install vagrant-hostmanager

Vagrant.configure("2") do |config|

  config.ssh.insert_key = false

  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true
  config.hostmanager.manage_guest = true
  config.hostmanager.ignore_private_ip = false
  config.hostmanager.include_offline = true

  config.vm.define "first" do |first|
    first.vm.box = "ubuntu/bionic64"
    first.vm.network "private_network", ip: "192.168.15.20"
    first.vm.hostname = "first.mycloud.local"

    first.vm.provider "virtualbox" do |vb|
      vb.name = "first"
      vb.memory = 2048
      vb.cpus = 3
    end

    first.vm.provider "vmware_desktop" do |v, override|
      override.vm.box = "bytesguy/ubuntu-server-20.04-arm64"
      v.gui = true
      v.memory = "2048"
      v.linked_clone = false
    end

    first.vm.provision "shell", inline: <<-EOF
      apt-get update
      apt-get -y upgrade
      apt-get -y install apt-transport-https ca-certificates curl gnupg-agent
      mkdir -p /etc/apt/keyrings
      curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg

      echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null

      DEBIAN_FRONTEND=noninteractive apt-get -y update
      DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -y docker-ce docker-ce-cli containerd.io docker-compose-plugin

      systemctl start docker
      systemctl enable docker

      usermod -aG docker vagrant
    EOF
  end

  config.vm.define "second" do |second|
    second.vm.box = "ubuntu/bionic64"
    second.vm.network "private_network", ip: "192.168.15.30"
    second.vm.hostname = "second.mycloud.local"

    second.vm.provider "virtualbox" do |vb|
      vb.name = "second"
      vb.memory = 2048
      vb.cpus = 3
    end

    second.vm.provider "vmware_desktop" do |v, override|
      override.vm.box = "bytesguy/ubuntu-server-20.04-arm64"
      v.gui = true
      v.memory = "2048"
      v.linked_clone = false
    end

    second.vm.provision "shell", inline: <<-EOF
        apt-get update
        apt-get -y upgrade
        apt-get -y install apt-transport-https ca-certificates curl gnupg-agent
        mkdir -p /etc/apt/keyrings
        curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg

        echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null

        DEBIAN_FRONTEND=noninteractive apt-get -y update
        DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -y docker-ce docker-ce-cli containerd.io docker-compose-plugin

        systemctl start docker
        systemctl enable docker

        usermod -aG docker vagrant
    EOF
  end

  config.vm.define "third" do |third|
    third.vm.box = "ubuntu/bionic64"
    third.vm.network "private_network", ip: "192.168.15.40"
    third.vm.hostname = "third.mycloud.local"

    third.vm.provider "virtualbox" do |vb|
      vb.name = "third"
      vb.memory = 2048
      vb.cpus = 3
    end

    third.vm.provider "vmware_desktop" do |v, override|
      override.vm.box = "bytesguy/ubuntu-server-20.04-arm64"
      v.gui = true
      v.memory = "2048"
      v.linked_clone = false
    end

    third.vm.provision "shell", inline: <<-EOF
        apt-get update
        apt-get -y upgrade
        apt-get -y install apt-transport-https ca-certificates curl gnupg-agent
        mkdir -p /etc/apt/keyrings
        curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg

        echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null

        DEBIAN_FRONTEND=noninteractive apt-get -y update
        DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -y docker-ce docker-ce-cli containerd.io docker-compose-plugin

        systemctl start docker
        systemctl enable docker

        usermod -aG docker vagrant
    EOF
  end

  config.vm.define "fourth" do |fourth|
    fourth.vm.box = "ubuntu/bionic64"
    fourth.vm.network "private_network", ip: "192.168.15.50"
    fourth.vm.hostname = "fourth.mycloud.local"

    fourth.vm.provider "virtualbox" do |vb|
      vb.name = "fourth"
      vb.memory = 2048
      vb.cpus = 3
    end

    fourth.vm.provider "vmware_desktop" do |v, override|
      override.vm.box = "bytesguy/ubuntu-server-20.04-arm64"
      v.gui = true
      v.memory = "2048"
      v.linked_clone = false
    end

    fourth.vm.provision "shell", inline: <<-EOF
        apt-get update
        apt-get -y upgrade
        apt-get -y install apt-transport-https ca-certificates curl gnupg-agent
        mkdir -p /etc/apt/keyrings
        curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg

        echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null

        DEBIAN_FRONTEND=noninteractive apt-get -y update
        DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -y docker-ce docker-ce-cli containerd.io docker-compose-plugin

        systemctl start docker
        systemctl enable docker

        usermod -aG docker vagrant
    EOF
  end

  config.vm.define "fifth" do |fifth|
    fifth.vm.box = "ubuntu/bionic64"
    fifth.vm.network "private_network", ip: "192.168.15.60"
    fifth.vm.hostname = "fifth.mycloud.local"

    fifth.vm.provider "virtualbox" do |vb|
      vb.name = "fifth"
      vb.memory = 2048
      vb.cpus = 3
    end

    fifth.vm.provider "vmware_desktop" do |v, override|
      override.vm.box = "bytesguy/ubuntu-server-20.04-arm64"
      v.gui = true
      v.memory = "2048"
      v.linked_clone = false
    end

    fifth.vm.provision "shell", inline: <<-EOF
        apt-get update
        apt-get -y upgrade
        apt-get -y install apt-transport-https ca-certificates curl gnupg-agent
        mkdir -p /etc/apt/keyrings
        curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg

        echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null

        DEBIAN_FRONTEND=noninteractive apt-get -y update
        DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -y docker-ce docker-ce-cli containerd.io docker-compose-plugin

        systemctl start docker
        systemctl enable docker

        usermod -aG docker vagrant
    EOF
  end

  config.vm.define "tools" do |tools|
    tools.vm.box = "ilker/ubuntu2004"
    tools.vm.network "private_network", ip: "192.168.15.80"
    tools.vm.hostname = "tools.mycloud.local"

    tools.vm.provider "virtualbox" do |vb|
      vb.name = "tools"
      vb.memory = 1024
      vb.cpus = 1
      vb.gui = true
    end

    tools.vm.provider "vmware_desktop" do |v, override|
      override.vm.box = "bytesguy/ubuntu-server-20.04-arm64"
      v.gui = true
      v.memory = "1024"
      v.linked_clone = false
    end

    tools.vm.provision "shell", inline: <<-EOF
      apt-get update
      apt-get -y upgrade
      curl -sLS https://get.hashi-up.dev | sh
      cp /vagrant/keys/insecure_private_key /home/vagrant/.ssh/
      chmod 700 /home/vagrant/.ssh/insecure_private_key

      hashi-up consul install \
        --local \
        --skip-enable \
        --skip-start \
        --client-addr 0.0.0.0

      hashi-up nomad install \
        --local \
        --skip-enable \
        --skip-start
    EOF

    #tools.vm.provision "shell", path: "cluster.sh"
  end
end

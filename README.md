hashi-up consul install \
    --local \
    --skip-enable \
    --skip-start \
    --client-addr 0.0.0.0

 export CONSUL_KEY=$(consul keygen)

hashi-up consul install \
    --ssh-target-addr first.mycloud.local \
    --ssh-target-user vagrant \
    --ssh-target-key /vagrant/keys/insecure_private_key \
    --server \
    --client-addr 0.0.0.0 \
    --bind-addr 10.3.5.20 \
    --advertise-addr 10.3.5.20

hashi-up nomad install \
    --ssh-target-addr first.mycloud.local \
    --ssh-target-user vagrant \
    --ssh-target-key /vagrant/keys/insecure_private_key \
    --server

hashi-up vault install \
    --ssh-target-addr first.mycloud.local \
    --ssh-target-user vagrant \
    --ssh-target-key /vagrant/keys/insecure_private_key \
    --consul-addr 10.3.5.20:8500 \
    --storage consul

---------------
hashi-up consul install \
    --local \
    --skip-enable \
    --skip-start \
    --client-addr 0.0.0.0



cd /vagrant/keys ; consul tls cert create -server -dc dc1
cd /vagrant/keys ; consul tls cert create -client -dc dc1

export TOOL_IP=10.3.5.80
export SERVER_1_IP=10.3.5.20
export SERVER_2_IP=10.3.5.30
export SERVER_3_IP=10.3.5.40
export AGENT_1_IP=10.3.5.50
export AGENT_2_IP=10.3.5.60
export CONSUL_KEY=$(consul keygen)

export CONSUL_KEY=$(ssh -o StrictHostKeyChecking=no -i ~/.ssh/insecure_private_key vagrant@first.mycloud.local 'consul keygen')

cp /vagrant/keys/insecure_private_key ~/.ssh/
chmod 700 ~/.ssh/insecure_private_key

hashi-up consul install \
    --local \
    --skip-enable \
    --skip-start \
    --client-addr 0.0.0.0

hashi-up tls cert create --host 10.3.5.20 --host 10.3.5.30 --host 10.3.5.40 --host 10.3.5.50 --host 10.3.5.60 --host 10.3.5.70 --host first.mycloud.local --host second.mycloud.local --host third.mycloud.local --host fourth.mycloud.local --host fifth.mycloud.local --host sixth.mycloud.local 

hashi-up tls cert create --host 10.3.5.20 --host 10.3.5.30 --host 10.3.5.40--host first.mycloud.local --host second.mycloud.local --host third.mycloud.local


hashi-up consul install \
  --ssh-target-addr $SERVER_1_IP \
  --ssh-target-user vagrant \
  --ssh-target-key /vagrant/keys/insecure_private_key \
  --server \
  --connect \
  --client-addr 0.0.0.0 \
  --bind-addr $SERVER_1_IP \
  --advertise-addr $SERVER_1_IP \
  --bootstrap-expect 3 \
  --retry-join $SERVER_1_IP --retry-join $SERVER_2_IP --retry-join $SERVER_3_IP

export CONSUL_KEY=$(ssh -o StrictHostKeyChecking=no -i ~/.ssh/insecure_private_key vagrant@first.mycloud.local 'consul keygen')

ssh -o StrictHostKeyChecking=no -i ~/.ssh/insecure_private_key vagrant@first.mycloud.local 'cd /vagrant/keys ; consul tls ca create'

ssh -o StrictHostKeyChecking=no -i ~/.ssh/insecure_private_key vagrant@first.mycloud.local 'cd /vagrant/keys ; consul tls cert create -server -dc dc1 -additional-dnsname=first.mycloud.local -additional-ipaddress=10.3.5.20 -additional-dnsname=second.mycloud.local -additional-ipaddress=10.3.5.30 -additional-dnsname=third.mycloud.local -additional-ipaddress=10.3.5.40'
ssh -o StrictHostKeyChecking=no -i ~/.ssh/insecure_private_key vagrant@first.mycloud.local 'cd /vagrant/keys ; consul tls cert create -client -dc dc1'

>>>>>>>>>>>>>>>>
ssh -o StrictHostKeyChecking=no -i ~/.ssh/insecure_private_key vagrant@first.mycloud.local 'cd /vagrant/keys ; consul tls cert create -server -dc dc1'
ssh -o StrictHostKeyChecking=no -i ~/.ssh/insecure_private_key vagrant@first.mycloud.local 'cd /vagrant/keys ; consul tls cert create -client -dc dc1'

hashi-up tls cert create --host 10.3.5.20 --host 10.3.5.30 --host 10.3.5.40 --host 10.3.5.50 --host 10.3.5.60 --host 10.3.5.70 --host first.mycloud.local --host second.mycloud.local --host third.mycloud.local --host fourth.mycloud.local --host fifth.mycloud.local --host sixth.mycloud.local 
>>>>>>>>>>>>>>>>

  hashi-up consul install \
  --ssh-target-addr $SERVER_1_IP \
  --ssh-target-user vagrant \
  --ssh-target-key /vagrant/keys/insecure_private_key \
  --server \
  --connect \
  --encrypt $CONSUL_KEY \
  --ca-file /vagrant/keys/consul-agent-ca.pem \
  --cert-file /vagrant/keys/dc1-server-consul-0.pem \
  --key-file /vagrant/keys/dc1-server-consul-0-key.pem \
  --client-addr $SERVER_1_IP \
  --bind-addr $SERVER_1_IP \
  --advertise-addr $SERVER_1_IP \
  --bootstrap-expect 3 \
  --retry-join $SERVER_1_IP --retry-join $SERVER_2_IP --retry-join $SERVER_3_IP

hashi-up consul install \
  --ssh-target-addr $SERVER_2_IP \
  --ssh-target-user vagrant \
  --ssh-target-key /vagrant/keys/insecure_private_key \
  --server \
  --connect \
  --encrypt $CONSUL_KEY \
  --ca-file /vagrant/keys/consul-agent-ca.pem \
  --cert-file /vagrant/keys/dc1-server-consul-0.pem \
  --key-file /vagrant/keys/dc1-server-consul-0-key.pem \
  --client-addr 0.0.0.0 \
  --bind-addr $SERVER_2_IP \
  --advertise-addr $SERVER_2_IP \
  --bootstrap-expect 3 \
  --retry-join $SERVER_1_IP --retry-join $SERVER_2_IP --retry-join $SERVER_3_IP
  
hashi-up consul install \
  --ssh-target-addr $SERVER_3_IP \
  --ssh-target-user vagrant \
  --ssh-target-key /vagrant/keys/insecure_private_key \
  --server \
  --connect \
  --encrypt $CONSUL_KEY \
  --ca-file /vagrant/keys/consul-agent-ca.pem \
  --cert-file /vagrant/keys/dc1-server-consul-0.pem \
  --key-file /vagrant/keys/dc1-server-consul-0-key.pem \
  --client-addr 0.0.0.0 \
  --bind-addr $SERVER_3_IP \
  --advertise-addr $SERVER_3_IP \
  --bootstrap-expect 3 \
  --retry-join $SERVER_1_IP --retry-join $SERVER_2_IP --retry-join $SERVER_3_IP

hashi-up consul install \
  --ssh-target-addr $AGENT_1_IP \
  --ssh-target-user vagrant \
  --ssh-target-key /vagrant/keys/insecure_private_key \
  --connect \
  --retry-join $SERVER_1_IP --retry-join $SERVER_2_IP --retry-join $SERVER_3_IP

hashi-up consul install \
  --ssh-target-addr $AGENT_1_IP \
  --ssh-target-user vagrant \
  --ssh-target-key /vagrant/keys/insecure_private_key \
  --connect \
  --retry-join $SERVER_1_IP --retry-join $SERVER_2_IP --retry-join $SERVER_3_IP


hashi-up nomad install \
  --ssh-target-addr $SERVER_1_IP \
  --ssh-target-user vagrant \
  --ssh-target-key /vagrant/keys/insecure_private_key \
  --server \
  --bootstrap-expect 3 \
  --retry-join $SERVER_1_IP --retry-join $SERVER_2_IP --retry-join $SERVER_3_IP
  
hashi-up nomad install \
  --ssh-target-addr $SERVER_2_IP \
  --ssh-target-user vagrant \
  --ssh-target-key /vagrant/keys/insecure_private_key \
  --server \
  --bootstrap-expect 3 \
  --retry-join $SERVER_1_IP --retry-join $SERVER_2_IP --retry-join $SERVER_3_IP
  
hashi-up nomad install \
  --ssh-target-addr $SERVER_3_IP \
  --ssh-target-user vagrant \
  --ssh-target-key /vagrant/keys/insecure_private_key \
  --server \
  --bootstrap-expect 3 \
  --retry-join $SERVER_1_IP --retry-join $SERVER_2_IP --retry-join $SERVER_3_IP

hashi-up nomad install \
  --ssh-target-addr $AGENT_1_IP \
  --ssh-target-user vagrant \
  --ssh-target-key /vagrant/keys/insecure_private_key \
  --client \
  --retry-join $SERVER_1_IP --retry-join $SERVER_2_IP --retry-join $SERVER_3_IP
  
hashi-up nomad install \
  --ssh-target-addr $AGENT_2_IP \
  --ssh-target-user vagrant \
  --ssh-target-key /vagrant/keys/insecure_private_key \
  --client \
  --retry-join $SERVER_1_IP --retry-join $SERVER_2_IP --retry-join $SERVER_3_IP


hashi-up vault install \
    --ssh-target-addr $SERVER_1_IP \
    --ssh-target-user vagrant \
    --ssh-target-key /vagrant/keys/insecure_private_key \
    --storage consul \
    --api-addr http://$SERVER_1_IP:8200

hashi-up vault install \
    --ssh-target-addr $SERVER_2_IP \
    --ssh-target-user vagrant \
    --ssh-target-key /vagrant/keys/insecure_private_key \
    --storage consul \
    --api-addr http://$SERVER_2_IP:8200

hashi-up vault install \
    --ssh-target-addr $SERVER_3_IP \
    --ssh-target-user vagrant \
    --ssh-target-key /vagrant/keys/insecure_private_key \
    --storage consul \
    --api-addr http://$SERVER_3_IP:8200



  hashi-up consul install \
  --ssh-target-addr $SERVER_1_IP \
  --ssh-target-user vagrant \
  --ssh-target-key /vagrant/keys/insecure_private_key \
  --server \
  --connect \
  --encrypt $CONSUL_KEY \
  --ca-file /vagrant/keys/consul-agent-ca.pem \
  --cert-file /vagrant/keys/dc1-server-consul-0.pem \
  --key-file /vagrant/keys/dc1-server-consul-0-key.pem \
  --client-addr $SERVER_1_IP \
  --bind-addr $SERVER_1_IP \
  --advertise-addr $SERVER_1_IP \
  --bootstrap-expect 3 \
  --retry-join $SERVER_1_IP --retry-join $SERVER_2_IP --retry-join $SERVER_3_IP

  hashi-up consul install \
  --ssh-target-addr $SERVER_1_IP \
  --ssh-target-user vagrant \
  --ssh-target-key /vagrant/keys/insecure_private_key \
  --server \
  --connect \
  --encrypt $CONSUL_KEY \
  --ca-file /vagrant/keys/consul-agent-ca.pem \
  --cert-file /vagrant/keys/dc1-server-consul-0.pem \
  --key-file /vagrant/keys/dc1-server-consul-0-key.pem \
  --client-addr 0.0.0.0 \
  --bind-addr $SERVER_1_IP \
  --advertise-addr $SERVER_1_IP \
  --bootstrap-expect 3 \
  --retry-join $SERVER_1_IP --retry-join $SERVER_2_IP --retry-join $SERVER_3_IP

  hashi-up consul install \
  --ssh-target-addr $SERVER_2_IP \
  --ssh-target-user vagrant \
  --ssh-target-key /vagrant/keys/insecure_private_key \
  --server \
  --connect \
  --encrypt $CONSUL_KEY \
  --client-addr 0.0.0.0 \
  --bind-addr $SERVER_2_IP \
  --advertise-addr $SERVER_2_IP \
  --bootstrap-expect 3 \
  --retry-join $SERVER_1_IP --retry-join $SERVER_2_IP --retry-join $SERVER_3_IP
  
hashi-up consul install \
  --ssh-target-addr $SERVER_3_IP \
  --ssh-target-user vagrant \
  --ssh-target-key /vagrant/keys/insecure_private_key \
  --server \
  --connect \
  --encrypt $CONSUL_KEY \
  --client-addr 0.0.0.0 \
  --bind-addr $SERVER_3_IP \
  --advertise-addr $SERVER_3_IP \
  --bootstrap-expect 3 \
  --retry-join $SERVER_1_IP --retry-join $SERVER_2_IP --retry-join $SERVER_3_IP

  ------------------------------------------

hashi-up consul install \
  --local \
  --skip-enable \
  --skip-start \
  --client-addr 0.0.0.0

cd /vagrant/keys ; consul tls ca create
cd /vagrant/keys ; consul tls cert create -server -dc dc1 -additional-dnsname=first.mycloud.local -additional-ipaddress=10.3.5.20 -additional-dnsname=second.mycloud.local -additional-ipaddress=10.3.5.30 -additional-dnsname=third.mycloud.local -additional-ipaddress=10.3.5.40
cd /vagrant/keys ; consul tls cert create -client -dc dc1 -additional-dnsname=fouth.mycloud.local -additional-ipaddress=10.3.5.50 -additional-dnsname=fifth.mycloud.local -additional-ipaddress=10.3.5.60

export CONSUL_KEY=$(consul keygen)
echo $CONSUL_KEY > /vagrant/keys/consul-gossip.key
export TOOL_IP=10.3.5.80
export SERVER_1_IP=10.3.5.20
export SERVER_2_IP=10.3.5.30
export SERVER_3_IP=10.3.5.40
export AGENT_1_IP=10.3.5.50
export AGENT_2_IP=10.3.5.60

cp /vagrant/keys/insecure_private_key ~/.ssh/
chmod 700 ~/.ssh/insecure_private_key

hashi-up consul install \
  --ssh-target-addr $SERVER_1_IP \
  --ssh-target-user vagrant \
  --ssh-target-key /vagrant/keys/insecure_private_key \
  --server \
  --connect \
  --encrypt $CONSUL_KEY \
  --ca-file /vagrant/keys/consul-agent-ca.pem \
  --cert-file /vagrant/keys/dc1-server-consul-0.pem \
  --key-file /vagrant/keys/dc1-server-consul-0-key.pem \
  --client-addr $SERVER_1_IP \
  --bind-addr 0.0.0.0 \
  --advertise-addr $SERVER_1_IP \
  --bootstrap-expect 3 \
  --retry-join $SERVER_1_IP --retry-join $SERVER_2_IP --retry-join $SERVER_3_IP

hashi-up consul install \
  --ssh-target-addr $SERVER_2_IP \
  --ssh-target-user vagrant \
  --ssh-target-key /vagrant/keys/insecure_private_key \
  --server \
  --connect \
  --encrypt $CONSUL_KEY \
  --ca-file /vagrant/keys/consul-agent-ca.pem \
  --cert-file /vagrant/keys/dc1-server-consul-0.pem \
  --key-file /vagrant/keys/dc1-server-consul-0-key.pem \
  --client-addr $SERVER_2_IP \
  --bind-addr 0.0.0.0 \
  --advertise-addr $SERVER_2_IP \
  --bootstrap-expect 3 \
  --retry-join $SERVER_1_IP --retry-join $SERVER_2_IP --retry-join $SERVER_3_IP
  
hashi-up consul install \
  --ssh-target-addr $SERVER_3_IP \
  --ssh-target-user vagrant \
  --ssh-target-key /vagrant/keys/insecure_private_key \
  --server \
  --connect \
  --encrypt $CONSUL_KEY \
  --ca-file /vagrant/keys/consul-agent-ca.pem \
  --cert-file /vagrant/keys/dc1-server-consul-0.pem \
  --key-file /vagrant/keys/dc1-server-consul-0-key.pem \
  --client-addr $SERVER_3_IP \
  --bind-addr 0.0.0.0 \
  --advertise-addr $SERVER_3_IP \
  --bootstrap-expect 3 \
  --retry-join $SERVER_1_IP --retry-join $SERVER_2_IP --retry-join $SERVER_3_IP

hashi-up consul install \
  --ssh-target-addr $AGENT_1_IP \
  --ssh-target-user vagrant \
  --ssh-target-key /vagrant/keys/insecure_private_key \
  --connect \
  --encrypt $CONSUL_KEY \
  --ca-file /vagrant/keys/consul-agent-ca.pem \
  --cert-file /vagrant/keys/dc1-client-consul-0.pem \
  --key-file /vagrant/keys/dc1-client-consul-0-key.pem \
  --bind-addr 0.0.0.0 \
  --advertise-addr $AGENT_1_IP \
  --retry-join $SERVER_1_IP --retry-join $SERVER_2_IP --retry-join $SERVER_3_IP

hashi-up consul install \
  --ssh-target-addr $AGENT_2_IP \
  --ssh-target-user vagrant \
  --ssh-target-key /vagrant/keys/insecure_private_key \
  --connect \
  --encrypt $CONSUL_KEY \
  --ca-file /vagrant/keys/consul-agent-ca.pem \
  --cert-file /vagrant/keys/dc1-client-consul-0.pem \
  --key-file /vagrant/keys/dc1-client-consul-0-key.pem \
  --bind-addr 0.0.0.0 \
  --advertise-addr $AGENT_2_IP \
  --retry-join $SERVER_1_IP --retry-join $SERVER_2_IP --retry-join $SERVER_3_IP

hashi-up nomad install \
  --local \
  --skip-enable \
  --skip-start

export NOMAD_KEY=$(nomad operator keygen)
echo $NOMAD_KEY > /vagrant/keys/nomad-gossip.key

cd /vagrant/keys ; consul tls ca create -domain=nomad -name-constraint

cd /vagrant/keys ; consul tls cert create -server -domain=nomad -dc=dc1 -additional-dnsname=first.mycloud.local -additional-ipaddress=10.3.5.20 -additional-dnsname=second.mycloud.local -additional-ipaddress=10.3.5.30 -additional-dnsname=third.mycloud.local -additional-ipaddress=10.3.5.40
cd /vagrant/keys ; consul tls cert create -client  -domain=nomad -dc=dc1 -additional-dnsname=fouth.mycloud.local -additional-ipaddress=10.3.5.50 -additional-dnsname=fifth.mycloud.local -additional-ipaddress=10.3.5.60

cd /vagrant/keys ; consul tls cert create -server -domain=nomad -dc=dc1
cd /vagrant/keys ; consul tls cert create -client  -domain=nomad -dc=dc1

hashi-up nomad install \
  --ssh-target-addr $SERVER_1_IP \
  --ssh-target-user vagrant \
  --ssh-target-key /vagrant/keys/insecure_private_key \
  --server \
  --bootstrap-expect 3 \
  --address $SERVER_1_IP \
  --advertise $SERVER_1_IP \
  --encrypt $NOMAD_KEY \
  --ca-file /vagrant/keys/nomad-agent-ca.pem \
  --cert-file /vagrant/keys/dc1-server-nomad-0.pem \
  --key-file /vagrant/keys/dc1-server-nomad-0-key.pem \
  --retry-join $SERVER_1_IP --retry-join $SERVER_2_IP --retry-join $SERVER_3_IP
  
hashi-up nomad install \
  --ssh-target-addr $SERVER_2_IP \
  --ssh-target-user vagrant \
  --ssh-target-key /vagrant/keys/insecure_private_key \
  --server \
  --bootstrap-expect 3 \
  --address $SERVER_2_IP \
  --advertise $SERVER_2_IP \
  --encrypt $NOMAD_KEY \
  --ca-file /vagrant/keys/nomad-agent-ca.pem \
  --cert-file /vagrant/keys/dc1-server-nomad-0.pem \
  --key-file /vagrant/keys/dc1-server-nomad-0-key.pem \
  --retry-join $SERVER_1_IP --retry-join $SERVER_2_IP --retry-join $SERVER_3_IP
  
hashi-up nomad install \
  --ssh-target-addr $SERVER_3_IP \
  --ssh-target-user vagrant \
  --ssh-target-key /vagrant/keys/insecure_private_key \
  --server \
  --bootstrap-expect 3 \
  --address $SERVER_3_IP \
  --advertise $SERVER_3_IP \
  --encrypt $NOMAD_KEY \
  --ca-file /vagrant/keys/nomad-agent-ca.pem \
  --cert-file /vagrant/keys/dc1-server-nomad-0.pem \
  --key-file /vagrant/keys/dc1-server-nomad-0-key.pem \
  --retry-join $SERVER_1_IP --retry-join $SERVER_2_IP --retry-join $SERVER_3_IP

hashi-up nomad install \
  --ssh-target-addr $AGENT_1_IP \
  --ssh-target-user vagrant \
  --ssh-target-key /vagrant/keys/insecure_private_key \
  --client \
  --encrypt $NOMAD_KEY \
  --retry-join $SERVER_1_IP --retry-join $SERVER_2_IP --retry-join $SERVER_3_IP
  
hashi-up nomad install \
  --ssh-target-addr $AGENT_2_IP \
  --ssh-target-user vagrant \
  --ssh-target-key /vagrant/keys/insecure_private_key \
  --client \
  --encrypt $NOMAD_KEY \
  --retry-join $SERVER_1_IP --retry-join $SERVER_2_IP --retry-join $SERVER_3_IP


hashi-up nomad restart \
  --ssh-target-addr $SERVER_1_IP \
  --ssh-target-user vagrant \
  --ssh-target-key /vagrant/keys/insecure_private_key
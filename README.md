hashi-up consul install \
    --ssh-target-addr 10.3.5.20 \
    --ssh-target-user vagrant \
    --ssh-target-key /Users/rmaire/workspace/hashiuptest/.vagrant/machines/first/virtualbox/private_key \
    --server \
    --client-addr 0.0.0.0 \
    --bind-addr 10.3.5.20 \
    --advertise-addr 10.3.5.20

hashi-up nomad install \
    --ssh-target-addr 10.3.5.20 \
    --ssh-target-user vagrant \
    --ssh-target-key /Users/rmaire/workspace/hashiuptest/.vagrant/machines/first/virtualbox/private_key \
    --server

hashi-up vault install \
    --ssh-target-addr 10.3.5.20 \
    --ssh-target-user vagrant \
    --ssh-target-key /Users/rmaire/workspace/hashiuptest/.vagrant/machines/first/virtualbox/private_key \
    --consul-addr 10.3.5.20:8500 \
    --storage consul

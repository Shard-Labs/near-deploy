
# Verify Cpu
Verify that CPU meets minimum requirements before setup
```
make ansible-verify-cpu
```

# Install Ansible
Install ansible on you local machine. e.g Debian and Ubuntu linux.
```
apt install ansible 
```
Enter the remote host IP in inventory.yml, the inventory.yml file should be located in the root of the ansible directory

# Install Near dependencies
Install depencies needed to setup near environment.
```
make ansible-deps
```

# Install node and node cli
Install node and node cli.
```
make ansible-node
make ansible-near-cli
```

# Setup nearcore
Clone nearcore from git and compile neard.
```
make ansible-nearcore
```

# Setup and run neard
Setup neard service.
```
make ansible-neard
```
# Stake near pool
Near staking pool, this step should be after activating the node as a validator.
```
make ansible-setup-validator
```
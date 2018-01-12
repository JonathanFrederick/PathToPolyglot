environment="$1"

if [ $environment = "deployment" ]
then
  ansible-playbook -e env_host=p2p publish.yml
  export TEST_ADDRESS=$P2PADDRESS
  pytest test_functionality.py

elif [ $environment = "staging" ]
then
  if [ -d .vagrant ] && [ -e Vagrantfile ]
  then
    echo "existing vagrant machine found"
    echo ""
    echo ""
  else
    vagrant init ubuntu/trusty64
    echo -e "VAGRANTFILE_API_VERSION = \"2\" \r
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config| \r
  config.vm.box = \"ubuntu/trusty64\" \r
  config.vm.network \"forwarded_port\", guest: 80, host: 8080 \r
  config.vm.network \"forwarded_port\", guest: 443, host: 8443 \r
end" > Vagrantfile
  fi

  vagrant up
  ansible-playbook -e "env_host=p2p-staging" publish.yml
  export TEST_ADDRESS=127.0.0.1:8080
  pytest test_functionality.py
  vagrant halt

else
  echo "'$environment' is not a valid environment"
fi

environment="$1"

if [ $environment = "deployment" ]
then
  ansible-playbook publish.yml
else
  echo "'$environment' is not a valid environment"
fi

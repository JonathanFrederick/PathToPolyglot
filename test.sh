environment="$1"

if [ $environment = "deployment" ]
then
  ansible-playbook publish.yml
elif [ $environment = "staging" ]
then
  if [ -d .vagrant ]
  then
    echo "existing vagrant machine found"
    echo ""
    echo ""
  else
    vagrant init ubuntu/trusty64
  fi
else
  echo "'$environment' is not a valid environment"
fi

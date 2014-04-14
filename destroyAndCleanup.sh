set -x
vagrant destroy -f
rm -rf DeveloperPlaybooks
rm -f vagrant-flow_ansible_inventory
git pull

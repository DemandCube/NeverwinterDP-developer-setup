set -x
vagrant destroy -f
rm -rf DemandCubePlaybooks
rm -f vagrant-flow_ansible_inventory
git pull
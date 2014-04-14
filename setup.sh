set -x
git clone https://github.com/DemandCube/DeveloperPlaybooks.git 
cd DeveloperPlayBooks
git clone https://github.com/DemandCube/ansible-flow.git
mv -f  ./ansible-flow/library/* ./library
rm -rf ./ansible-flow

cd ../
rm -rf Vagrantfile
vagrant plugin install vagrant-flow
vagrant flow multiinit
vagrant up
vagrant flow ansibleinventory
vagrant flow hostfile
vagrant flow playbook

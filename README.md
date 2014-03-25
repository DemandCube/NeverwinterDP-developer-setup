Sparkngin Developer Setup
=========================
- A [NeverwinterDP](https://github.com/DemandCube/NeverwinterDP) and [DemandCube](https://github.com/DemandCube) Project

This is the Vagrant Setup for developing [Sparkngin](https://github.com/DemandCube/Sparkngin)

This setups two virtualboxs:
1) Sparkngin (host: sparkning1)
2) Kafka and Zookeeper (host: sparkngin2)

Install
====
Step 1) Setup
----

- [DemandCube Developer Setup](https://github.com/DemandCube/developer-setup)

```
git clone https://github.com/DemandCube/developer-setup.git
cd developer-setup
./setup.sh
vagrant plugin install vagrant-flow
```
Step 2) Run
----

```
git clone https://github.com/DemandCube/Sparkngin-developer-setup.git
git clone https://github.com/DemandCube/DeveloperPlayBooks.git
cd DeveloperPlayBooks
mkdir library
cd library
git clone https://github.com/DemandCube/ansible-flow.git
mv ./ansible-flow/* ./
cd ../../Sparkngin-developer-setup
vagrant up
vagrant ansible-inventory
ansible-playbook -i vagrant-flow_ansible_inventory ../DeveloperPlayBooks/main.yml
# vagrant ssh sparkngin1 
#    or
# vagrant ssh sparkngin2
#    or
# vagrant ssh jenkinsdp
```

Keep your fork updated
====
[Github Fork a Repo Help](https://help.github.com/articles/fork-a-repo)


- Add the remote, call it "upstream":

```
git remote add upstream git@github.com:DemandCube/Sparkngin-developer-setup.git
```
- Fetch all the branches of that remote into remote-tracking branches,
- such as upstream/master:

```
git fetch upstream
```
- Make sure that you're on your master branch:

```
git checkout master
```
- Merge upstream changes to your master branch

```
git merge upstream/master
```

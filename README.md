Sparkngin Developer Setup
=========================

This is the Vagrant Setup developing [Sparkngin](https://github.com/DemandCube/Sparkngin)

- Step 1) 
  - Setup your environment with:
  - [DemandCube Developer Setup](https://github.com/DemandCube/developer-setup)


Keep your fork updated
====
[Github Fork a Repo Help](https://help.github.com/articles/fork-a-repo)


- Add the remote, call it "upstream":

```
git remote add upstream https://github.com/DemandCube/developer-setup.git
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

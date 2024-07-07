
# Git Management of Submodules Solution
This repo have a script that will help you deal with submodules in your main repo. You can automate it. 

You run a script on your local repository and then you have the submodules with their latest commit and it also commits this change and pushes to the fullstack-repo on github. 
### Result
With one run of the script, the changes of the submodules are now present in your local repo and on github.

## Problem
Mainly this solution is to solve the below problem or similar ones:

"The example used in the picture is to help you understand the assignment. You will start by creating two repositories: `frontend-repo` and `backend-repo`. Each repository will contain its own files and folders. What I care about now is having a Python class in each of them (`client.py` and `server.py` . These repositories are independent and self-contained.  
Next, create a new repository called `fullstack-repo`. This repository should contain one new file, which will be the configuration file, and a "mirror" of the other repositories. I would like to have a copy of `frontend-repo` and `backend-repo` in it, but I should be able to update these repositories (preferably automatically; once a push is done on the original repo, it should be reflected in `fullstack-repo`). The configuration file should contain variables that can be read by `frontend-repo` and `backend-repo`. For example:"

![enter image description here](https://raw.githubusercontent.com/DawoudTormos/SE-gitManagmentAssignment/main/SE_Challenge.png)

## Steps:

 - You first add as submodules the frontend-repo and backend-repo to your fullStack-repo locally.
 
  - Edit in script.sh on the first line after cd the path to where the full repo is on your machine.
 
 - Then you can run the bash script "script.sh" on your local fullstack repo to update your submodules to their latest commit and then it commits this change and push it to the fullstack repo on github 
 
 - you could need to use chmod to give access for the script to execute without problems.
 
 - You can automate this script to run every minute (or as you need)  in the windows Task Scheduler with something like:
  path/to/bash.exe  "path/to/script.sh"
  for example bashe.exe is git bash for me and it should work.


## To solve the config file problem:
This solution isn't optimal maybe and isn't for you if you strictly need your config file on the main fullstack directory.
 - Put the file in a repo of its own and push it to github.
 
 - Add the repo of the file as a submodule in the main repo and as a submodule for the submodules.
 - You should edit the path as needed in the script.sh files. You have 3 to edit in this case.
 - Now u have to run the file in all the 3 repos to get updated to the changes of the config file in the 4th repo.
 - You can similarly automate this file to run periodically.

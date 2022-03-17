import UIKit
import Foundation


let Star With GIT

//Gis is a Distribuited VCS where everyone has a local respository and has acces to a local repository
// once instaled you can check if it's in your computer whit the command git --version

// Set config values

    git config --global user.name "Username"
    git config --global user.mail "email"

// Check the config

    git config list

    // to get help with a comand

    git command help for instance git config help

//STARTING

    * CASE 1 WITH A NEW REPOSITORY

    RUN
    git init to initialize the repository
    git status to see untrack files
    use .gitignore to exclude files
    git add -A to add files to staging area
    git reset to remove files to untrack area
    git commit -m  "mesage"    to send files to local repository

    git log to see the commit you've send
    
    git pull to check if free to update
    git push to send the changes to remote repository
                            
                            
                        
    * CASE 1 WITH A EXISTING  REPOSITORY
                            
    git clone <url> <where to clone> git clone https://buendiaomar/a2.git .
    git remote -v to get info about the remote
    git branch -a to see the branches

    //SO WHE YOU MAKE CHANGES

    1 commit changes like we did before -> git diff, git status, git add -A, and git commit -m "message"

    2 do the push proccess -> git pull origin master, git git push origin master

    
    //COMMON OVERFLOW

    //CREATE A MERGE

    1 create a branch for desire feature -> git branch calc-divide
    2 move to the new branch -> git checkout calc-divide
    3 after commit push the branch -> git push -u origin calc-divide
    4 get branch -a to obtain info
                            

    // MERGE A BRANCH

    1 move to the master branch -> git checkout master
    2 pull to check -> git pull origin master
    3 check merges -> git branch --merge
    4 do the merge -> git merge calc-divide
    5 push the changes -> git push origin master
    6 delete the unused branch -> git branch --merge to ensure the branch was merged,
    7 delete locally -> git branch -d calc-divide, git push origin --delete calc-divide


    




                        



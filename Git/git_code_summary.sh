# some basic code for github
# more at code school:
# https://www.codeschool.com/courses/try-git

# cd to the directory you want the code stay on your local
cd ./Data\ Scientist\ Learning/git

git init

git status

# on the github, create a repo called datasciencecoursera

git remote add origin https://github.com/h6yang/datasciencecoursera.git

# create a file in you local
vi HelloWorld.md

# add your file to git local
git add HelloWorld.md 

# commit you file
git commit -m "Add HelloWorld.md"

# check the log file by 
git log

# add your file from your local git to github web
git remote add datasciencecoursera https://github.com/h6yang/datasciencecoursera.git

# push to github web
git push -u datasciencecoursera master
git push -f -u datasciencecoursera master


# clone other's github to your local
# on other's github page, "fork" the repo; Then this repo will show on your github
# after fork other's repo, clone to your local git 
git clone https://github.com/h6yang/datasharing.git



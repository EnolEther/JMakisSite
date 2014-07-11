# Quick reference for development workflow

~~~ shell
# Git Notes

$:> git status
$:> git log
$:> git add [. | fName | dirName]
$:> git mv source destination
$:> git rm fName
$:> git checkout [-b] branchName
$:> git merge branchName
$:> git branch [-d] [branchName]
$:> git push origin master

# Heroku Notes

$:> heroku open
$:> heroku config[:set | :get | :unset]
$:> heroku pipeline[:diff | :promote]
$:> git push heroku master

# Push a non-master branch to staging environment
# Occasionally need to force push
$:> git push [-f] heroku workingBranch:master
~~~
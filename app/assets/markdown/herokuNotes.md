# My notes on using Heroku

To deploy to heroku

~~~ bash
$:>  heroku login
$:>  heroku create           # To create the new application
$:>  git push heroku master
$:>  heroku open             # Opens application in web browser
~~~

Other useful heroku Commands

To rename the app:

~~~ bash
$:>  heroku rename newName
~~~

To setup env. variables, secrets, and other backend data.

~~~ bash
$:>  heroku config
$:>  heroku config:get
$:>  heroku config:set
$:>  heroku config:unset
~~~

More "Cheat Sheet" commands

~~~ bash
# Staging commands
$:>  heroku pipeline:diff
$:>  heroku pipeline:promote
# Push non-master branch to staging env
$:>  git push heroku branch:master 
~~~~

[Heroku Documentation](http://devcenter.heroku.com/)

[Heroku Commands](http://devcenter.heroku.com/heroku-command)
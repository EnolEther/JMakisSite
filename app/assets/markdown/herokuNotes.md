# My notes on using Heroku

To deploy to heroku

	heroku login
	heroku create						 # To create the new application
	git push heroku master
	heroku open							 # Opens application in web browser

Other useful heroku Commands

To rename the app:

	heroku rename newName

To setup env. variables, secrets, and other backend data.

  heroku config
  heroku config:get
  heroku config:set
  heroku config:unset

[Heroku Documentation](http://devcenter.heroku.com/)

[Heroku Commands](http://devcenter.heroku.com/heroku-command)
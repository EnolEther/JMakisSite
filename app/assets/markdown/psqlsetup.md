# Setting up a postgresql database locally

I installed the [postgresql app](http://postgresapp.com/) to facilitate easy setup (I tried using homebrew however I got lost in the setup).

After I installed and ran the app I added the bin path to my .bash_profile

~~~
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.3/bin
~~~

Be warned, that bin path is version specific

I'm referencing [this tutorial on heroku](https://devcenter.heroku.com/articles/heroku-postgresql).


# Setting Ruby, RoR, and my dev. environment.

I have found setting up my Ruby and RoR environment to be one of the most difficult and time consuming affairs for a beginner to the framework. I'm compiling my notes on how I setup my Mid 2009 MacBook Pro running OS X 10.9.

The code snippets of this guide is carried out in the OS X terminal. I use [iTerm2](iterm2.com) for the better layout management. I've included notes [here](#iterm). Following the same line of thought I love [Sublime Text 3](http://www.sublimetext.com/3). It is currently in open beta so the software is free to download for the time being. I've included notes [here](#sublime).

_Disclaimer: YMMV, I am only an amateur programmer and I am hardly confident this is the best way to setup your workstation. All I am confident about is it works for me and most of my problems have been solved by Google-Fu. This guide is for OS X mavericks, I advise using extreme caution if you're following this guide on a different platform._

+ [*Ruby on Rails Tutorial*](http://railstutorial.org/) by [Michael Hartl](http://michaelhartl.com/). This is a great guide and how I got started. He also includes instructions on how to setup your rails.

For a more general approach to the installation using RVM instead of rbenv [I think this guide that is well written](http://railsapps.github.io/installrubyonrails-mac.html). This is probably the best failure resistant guide to setting up your Mavericks environment.

<a name="envsetup"></a>
# Setting it up
Below are my notes for my hacked together setup using rbenv.

Install [homebrew](http://brew.sh/) for managing packages for up to date development.

```
$ ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
```

To ensure Homebrew is setup properly run the doctor and follow the prompts

```
$ brew doctor
```

If you haven't set up a development environment, you're probably lacking the Xcode command line tools. The simplest way is to run

```
$ xcode-select --install
```

Apple lacks the GNU compiler by default, most guides recommend installing it.

```
$ brew install apple-gcc42
```

Install a ruby version manager, I use rbenv but another popular one is RVM (see above).

```
$ brew install rbenv ruby-build rbenv-gem-rehash rbenv-binstubs sqlite
```

To find a list of available versions to install type up:

```
$ rbenv install -l;
$ rbenv install 2.1.0;  # This will install ruby 2.1.0
$ rbenv global 2.1.0;   # This sets your system to use version 2.1.0
$ rbenv global;         # Verify this worked.
```

You can triple check your ruby setup by making sure the output of these commands both point to the rbenv directories.

```
$ rbenv whence --path ruby;
$ which ruby;
```

Now we need to manage ruby gems:

```
$ gem update -—system
$ gem install bundler rails rails_12factor
```

Now we need to setup [Heroku toolbelt](https://toolbelt.heroku.com/). Heroku is a free hosting service that is easy to use to publish apps. Follow the installation and setup guide from the link above. Heroku natively uses PostgreSQL as it's database backend compared to the default sqlite. The easiest way to install [postgresql is to download the app](http://postgresapp.com/) recommended by Heroku and run it at startup.

Now test everything out. Use [this guide](https://devcenter.heroku.com/articles/getting-started-with-rails4) from the heroku learning center to quickly start a page. Start at the section from the section of the guide beginning with:

```
$ rails new myapp --database=postgresql
```

Now, I have tweaked my setup in so many tiny ways this is as far I can write without redoing everything over and documenting my every step. Here are some helpful links to get you going.

+ [*Ruby on Rails Tutorial*](http://railstutorial.org/) by [Michael Hartl](http://michaelhartl.com/).
+ [Markdown Syntax](http://daringfireball.net/projects/markdown/syntax#list)
+ [Markdown Cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)
+ [Git Documentation](http://gitref.org/)
+ [Heroku Documentation](https://devcenter.heroku.com/)
+ [Heroku CLI Documentation](https://devcenter.heroku.com/articles/heroku-command)
+ [Bundler Documentation](http://bundler.io/v1.5/rationale.html)
+ [Setting up a Github Repo](https://help.github.com/articles/create-a-repo)


<a name="sublime"></a>

# Sublime Text 3

Once Sublime Text is installed I use the [sublime text package manager](https://sublime.wbond.net/) to install and manage the different packages I use for my work environment. To install this manager follow the instructions given on [this page](https://sublime.wbond.net/installation). As it is out of the scope of this notes page I won't be including specific installation instructions for each package. The instructions provided by the package documentation should be used.

I've installed:

+ [Theme - Soda](https://sublime.wbond.net/packages/Theme%20-%20Soda)
  + I use Soda dark with the syntax highlighting color schemes files provided at the bottom of the page above.
+ [SublimeText Markdown Preview](https://github.com/revolunet/sublimetext-markdown-preview)
+ [SideBarEnhancements](https://sublime.wbond.net/packages/SideBarEnhancements)
+ [SublimeCodeIntel](https://sublime.wbond.net/packages/SublimeCodeIntel)
+ [Terminal](http://wbond.net/sublime_packages/terminal)
+ [Dotfiles Syntax Highlighting](https://sublime.wbond.net/packages/Dotfiles%20Syntax%20Highlighting)
+ [Haml](https://sublime.wbond.net/packages/Haml)
+ [LaTeXing](https://sublime.wbond.net/packages/LaTeXing)
+ [Sass](https://sublime.wbond.net/packages/Sass) 
+ [SublimeLinter](https://sublime.wbond.net/packages/SublimeLinter)
  + [Documentation](http://sublimelinter.readthedocs.org/en/latest/index.html)
+ [SublimeLinter-ruby](https://github.com/SublimeLinter/SublimeLinter-ruby)

<a name="iterm"></a>

# iTerm2

For using terminal as much as I do, I enjoy having the software in full screen with at least two columns but more often a grid layout. This will make more sense once you begin running a development webserver in one terminal instance and require another. It greatly speeds up my productivity having everything in one screen. 

My only modification of the iTerm default settings is the use of the [Soda dark theme](https://github.com/deepsweet/Monokai-Soda-iTerm) to match my sublime theme.

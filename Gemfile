source 'https://rubygems.org'
ruby '2.1.1'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'

gem 'rails',		  					      '~>4.1'		# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'pg',			  	        			  '~>0.17'  # Use postgresql as the database for Active Record
gem 'bootstrap-sass',             '~>3.2'   # Bootstrap for dynamic CSS
gem 'sass-rails',                 '~>4.0'		# Use SCSS for stylesheets
gem 'uglifier',				     	      '~>2.5'		# Use Uglifier as compressor for JavaScript assets
gem 'coffee-rails',		            '~>4.0'		# Use CoffeeScript for .js.coffee assets and views
gem 'jquery-rails',		   	        '~>3.1'		# Use jquery as the JavaScript library
gem 'turbolinks',		   		        '~>2.2'		# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'jbuilder',				   	        '~>2.1'		# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'flickraw',				   	  	    '~>0.9'		# Flickr API Gem
gem 'kramdown',                   '~>1.4'   # Markdown and highlighting gem
gem 'unicorn',                    '~>4.8'   # Unicorn App Server
gem 'actionview-encoded_mail_to', '~>1.0'   # allows encoding of mail_to
gem 'newrelic_rpm',               '~>3.9'   # Heroku performance monitoring

group :development, :test do
  gem 'rspec-rails',            '~>3.0' 	# TDD packages
  gem 'guard-rspec',				    '~>4.0'		# ^
  gem 'guard-spork',				    '~>1.5'		# ^
  gem 'childprocess',				    '~>0.3'		# ^
  gem 'dotenv-rails',           '~>0.10'
end

group :test do
  gem 'selenium-webdriver',	    '~>2.40'  # 
  gem 'capybara',			          '~>2.4'   #
end

group :doc do
			# bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', '~> 0.4', require: false
end

group :production do
  gem 'rails_12factor', '~>0.0'
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

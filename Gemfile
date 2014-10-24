source 'https://rubygems.org'
#ruby   '2.1.1'
gem 'imgkit'
gem 'mechanize'
gem "paperclip", :git => "git://github.com/thoughtbot/paperclip.git"
gem 'pry'
gem 'sidekiq'
gem 'bootstrap-sass', '~>3.2.0'
  
group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'shoulda-matchers', '~> 2.7.0'

end


gem 'mongoid', github: 'mongoid/mongoid'

gem 'yelp', require: 'yelp'

gem 'gravatar-ultimate'

gem 'geocoder'

gem 'area'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.5'
# Use postgresql as the database for Active Record
#gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

#includes the mini_magick and fog gems needed for image resizing (

gem 'carrierwave',             '0.10.0'
gem 'mini_magick',             '3.8.0'
gem 'fog',                     '1.23.0'

# Use ActiveModel has_secure_password

gem 'faker', '1.4.2'  #which will allow us to make sample users with semi-realistic names and email addresses 
gem 'bcrypt', '~> 3.1.7'

gem 'rspec-rails'

gem 'factory_girl'

gem 'will_paginate',           '3.0.7'
gem 'bootstrap-will_paginate', '0.0.10'#use Bootstrap’s pagination styles. 
#The solution is to paginate the users, so that (for example) only 30 show up on a page at any one time.

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
group :production do
  gem 'pg',             '0.17.1'
  gem 'rails_12factor', '0.0.2'
  gem 'unicorn',        '4.8.3'
end


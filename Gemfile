source 'https://rubygems.org'

ruby '2.2.0'

gem 'rails' # Rails web server for Ruby
gem 'pg' # Ruby interface for PostgreSQL
gem 'sass-rails' # use SASS instead of CSS
gem 'uglifier' # compressor for JavaScript assets
gem 'coffee-rails' # use Coffeescript
gem 'jquery-rails' # use jquery with Rails
gem 'turbolinks' # following links faster
gem 'jquery-turbolinks' # manage large bind with turbolinks
gem 'rails_admin', :git => 'git://github.com/sferik/rails_admin.git' # administrative site
gem 'devise' # authentification solution
gem 'protected_attributes' # to have protected attributes
gem 'coveralls', require: false # measure test coverage
gem 'paperclip' # gem to manage images files easily
gem 'will_paginate' # pagination gem for rails branch
gem 'travis' # travis CI (Continuous Integration)

group :test do
  gem 'capybara' # interact with pages in tests
  gem 'cucumber-rails', require: false # BDD framework
  gem 'capybara-webkit' # headless webkit driver for capybara
  gem 'poltergeist' # headless driver for capybara by phantomjs
  gem 'headless' # gem that allows capybara-webkit to run without calling xvfb directly
  gem 'database_cleaner' # clean db in tests
  gem 'shoulda-matchers', require: false # one-line tests for common Rails validations
end

group :development, :test do
  gem 'rspec-rails' # RSpec test framework for Rails
  gem 'faker' # easily generate fake data
  gem 'factory_girl_rails' # use factories to produce objects
  gem 'awesome_print' # Well Formatted output in console
  gem 'pry-byebug' # a version of pry and debugger compatible with Ruby >2.0.0
  gem 'hirb' # formats ActiveRecord objects into table format in the console
  gem 'pry-rails' # integrate pry with rails console
  gem 'better_errors' # nice output of rails errors in browser
  gem 'binding_of_caller' # online console and debugging in browser
  gem 'launchy' # open capybara-generated pages in browser
  gem 'web-console' # debugging tools for Rails
end

group :production do
  gem 'rails_12factor' # required to run the app on Heroku
  gem 'passenger' # web server
end


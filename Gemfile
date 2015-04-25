source 'https://rubygems.org'

gem 'rails', '4.2.0' # Rails web server for Ruby
gem 'pg' # Ruby interface for PostgreSQL
gem 'sass-rails', '~> 5.0' # use SASS instead of CSS
gem 'uglifier', '>= 1.3.0' # # compressor for JavaScript assets
gem 'coffee-rails', '~> 4.1.0' # use Coffeescript
gem 'jquery-rails' # use jquery with Rails
gem 'turbolinks' # following links faster
gem 'rails_admin', :git => 'git://github.com/sferik/rails_admin.git' # administrative site
gem 'devise' # authentification solution
gem 'protected_attributes' # to have protected attributes
gem 'coveralls', '~> 0.7.9', require: false # measure test coverage

group :test do
  gem 'capybara', '~> 2.4.4' # interact with pages in tests
  gem 'cucumber-rails', '~> 1.4.2', require: false # BDD framework
  gem 'capybara-webkit', '~> 1.4.1' # headless webkit driver for capybara
  gem 'poltergeist', '~> 1.6' # headless driver for capybara by phantomjs
  gem 'headless', '~> 1.0.2' # gem that allows capybara-webkit to run without calling xvfb directly
  gem 'database_cleaner', '~> 1.4' # clean db in tests
  gem 'shoulda-matchers', '~> 2.8', require: false # one-line tests for common Rails validations
end

group :development, :test do
  gem 'rspec-rails', '~> 3.2.0' # RSpec test framework for Rails
  gem 'faker', '~> 1.4.3' # easily generate fake data
  gem 'factory_girl_rails', '~> 4.5.0' # use factories to produce objects
  gem 'awesome_print', '~> 1.6.1' # Well Formatted output in console
  gem 'pry-byebug', '~> 3.0.1' # a version of pry and debugger compatible with Ruby >2.0.0
  gem 'hirb', '~> 0.7.3' # formats ActiveRecord objects into table format in the console
  gem 'pry-rails', '~> 0.3.3' # integrate pry with rails console
  gem 'better_errors', '~> 2.1.1' # nice output of rails errors in browser
  gem 'binding_of_caller', '~> 0.7.2'  # online console and debugging in browser
  gem 'launchy', '~> 2.4.3' # open capybara-generated pages in browser
  gem 'web-console', '~> 2.0.0' # debuggin tools for Rails
end

group :production do
  gem 'rails_12factor', '~> 0.0.3' # required to run the app on Heroku
  gem 'passenger', '~> 4.0.59' # web server
end


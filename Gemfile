source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.4'

gem 'simple_form'

gem 'rake', '~> 10.5'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
gem 'coffee-script-source', '1.8.0'
# Use jquery as the JavaScript library
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'rails4-autocomplete'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'jquery-turbolinks'

gem 'selenium-webdriver'

gem 'mail'

gem 'mail_form'

gem 'nokogiri','~> 1.6.7.2'

## Gemfile for Rails 3+, Sinatra, and Merb
gem 'dotenv-rails', :groups => [:development, :test]

gem "recaptcha", require: "recaptcha/rails"

gem "arbre"


# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem 'tzinfo-data', platforms: [:mingw, :mswin]
# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
gem 'activeadmin', '~>1.0.0.pre2'
gem 'devise'
gem 'cancan' # or cancancan
gem 'draper'
gem 'pundit'
gem 'kaminari'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'rspec-rails'

  gem 'rspec-activemodel-mocks'
  gem "factory_girl_rails", "~> 4.4.1"
end

group :test do
  gem 'rspec-expectations'
  gem 'cucumber-rails', :require => false
  gem 'simplecov', :require => false
  gem "faker", "~> 1.4.3"
  gem 'shoulda-matchers', require: false
  gem 'webmock'
  gem 'vcr'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end


group :production do
  gem 'pg'
  gem 'rails_12factor'
end





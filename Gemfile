# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '>= 6.0.0'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '>= 3.12'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

gem 'bootstrap', '>= 4.3.1'
gem 'bootstrap-wysihtml5-rails', '>= 0.3.3.8'
gem 'carrierwave', '>= 2.0', '>= 2.0.2'
gem 'ckeditor', github: 'galetahub/ckeditor'
gem 'coderay', '>= 1.0.7'
gem 'devise', '>= 4.2' # login
gem 'jquery-rails', '~> 4.3', '>= 4.3.3'
gem 'mini_magick'
gem 'paperclip'
gem 'redcarpet', '~> 3.4'
gem 'sassc-rails', '>= 2.1.0'
gem 'sprockets-rails', '>= 2.3.2'
gem 'unicorn-rails'
# gem 'webpacker'

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 5.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'jbuilder', '~> 2.9', '>= 2.9.1'
gem 'turbolinks', '~> 5'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false
gem "rake",">= 0.8.7", require: false
group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'brakeman'
  gem 'factory_bot', '~> 5.1', '>= 5.1.1'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'rspec-rails' # Y
  gem 'rubocop-gemfile', require: false # Y
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # gem 'bootstrap-wysihtml5-rails'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

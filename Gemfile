# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.4'
gem 'bcrypt', '~> 3.1.7'
gem 'cssbundling-rails'
gem 'jsbundling-rails'
gem 'pg', '~> 1.2'
gem 'puma', '~> 5.0'
gem 'rails', '~> 7.0.8'
gem 'redis', '~> 4.0'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'turbo-rails'

gem 'bootsnap', require: false
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

gem 'foreman'

gem 'activerecord-import', '~> 1.2'
gem 'blueprinter', '~> 0.25'
gem 'caxlsx', '~> 3.1'
gem 'caxlsx_rails', '~> 0.6'
gem 'devise'
gem 'dotenv-rails', '~> 2.7'
gem 'draper', '~> 4.0'
gem 'lograge'
gem 'pagy', '~> 5.0'
gem 'pundit', '~> 2.1'
gem 'rails-i18n', '~> 7'
gem 'rubyXL', '~> 3.4'
gem 'rubyzip', '~> 2'
gem 'sidekiq', '~> 6'

gem 'validates_timeliness'

group :development, :test do

  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'faker', '~> 2'
  gem 'fasterer'
  gem 'pry-rails'

end

group :development do

  gem 'annotate'
  gem 'brakeman', '~> 5.1', require: false
  gem 'bullet'
  gem 'letter_opener'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'rubocop', '~> 1.18', require: false
  gem 'rubocop-i18n', '~> 3', require: false
  gem 'rubocop-performance', '~> 1.11', require: false
  gem 'rubocop-rails', '~> 2.11', require: false
  gem 'web-console'

end

group :test do

  gem 'benchmark-ips', require: 'benchmark/ips'
  gem 'capybara'
  gem 'database_cleaner-active_record'
  gem 'factory_bot_rails'
  gem 'rspec-rails'
  gem 'selenium-webdriver'
  gem 'shoulda-matchers'
  gem 'simplecov', require: false
  gem 'timecop'
  gem 'webmock'

end

gem 'jquery-rails', '~> 4.6'

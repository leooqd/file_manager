source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

gem 'rails', '~> 5.2.4', '>= 5.2.4.2'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'

gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

# === my gems ===
gem 'materialize-sass'
gem 'material_icons'
gem 'jquery-rails'
gem "animate-rails"
gem 'burgundy'
# === ======= ===


gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  gem 'colorize'
  gem "bullet"
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem "awesome_print"
  gem "hirb"
  gem "pry-rails"
  gem "pry-byebug"
  gem "better_errors"
  gem 'rspec-rails', '~> 3.5'
  gem "factory_bot_rails"
  gem "rubocop"
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

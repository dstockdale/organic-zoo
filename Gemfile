source 'https://rubygems.org'

ruby '2.2.0'

gem 'rails', '4.2.0'
gem 'pg'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'puma'
gem 'aws-sdk', '< 2.0'
gem 'bootstrap-sass', '~> 3.3.1'

group :production do
  gem 'newrelic_rpm'
end

group :development do
  gem 'better_errors'
  gem 'guard-bundler'
  gem 'guard-rspec'
  gem 'quiet_assets'
  gem 'rails_layout'
  gem 'rb-fchange', require: false
  gem 'rb-fsevent', require: false
  gem 'rb-inotify', require: false
  gem 'spring-commands-rspec'
  gem 'foreman'
end

group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'selenium-webdriver'
  gem 'shoulda-matchers', require: false
end

group :development, :test do
  gem 'byebug'
  gem 'web-console', '~> 2.0'
  gem 'spring'
  gem 'factory_girl_rails'
  gem 'rspec-rails'
end

gem 'rails_12factor', group: :production

gem 'spree', '3.0.0'
gem 'spree_gateway', github: 'spree/spree_gateway', branch: '3-0-stable'
gem 'spree_auth_devise', github: 'spree/spree_auth_devise', branch: '3-0-stable'
gem 'spree_i18n', github: 'spree-contrib/spree_i18n', branch: '3-0-stable'
gem 'spree_multi_currency', github: 'spree-contrib/spree_multi_currency', branch: '3-0-stable'
gem 'spree_paypal_express', github: 'spree-contrib/better_spree_paypal_express', branch: '3-0-stable'
gem 'spree_reviews', github: 'spree-contrib/spree_reviews', branch: '3-0-stable'



source "https://rubygems.org"

ruby "2.7.1"

gem "administrate"
gem "bootsnap", ">= 1.4.2", require: false
gem "devise"
gem "devise-bootstrapped"
gem "gritter"
gem "jbuilder", "~> 2.7"
gem "pg", ">= 0.18", "< 2.0"
gem "puma", "~> 4.1"
gem "rails", "~> 6.0.3", ">= 6.0.3.2"
gem "sass-rails", ">= 6"
gem "turbolinks", "~> 5"
gem "webpacker", "~> 4.0"

group :development, :test do
  gem "byebug", platforms: %i[mri mingw x64_mingw]
  gem "capybara", ">= 2.15"
  gem "database_cleaner"
  gem "factory_bot_rails", git: "http://github.com/thoughtbot/factory_bot_rails"
  gem "rspec-rails"
end

group :development do
  gem "fuubar"
  gem "guard"
  gem "guard-rspec"
  gem "listen", "~> 3.2"
  gem "rubocop"
  gem "rubocop-rails", require: false
  gem "rubocop-rspec"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console", ">= 3.3.0"
end

group :test do
  gem "selenium-webdriver"
  gem "simplecov", require: false, group: :test
  gem "webdrivers"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.0"
gem "rails", "~> 7.0.8"
gem "sprockets-rails"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "jsbundling-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "cssbundling-rails"
gem "jbuilder"
gem "redis", "~> 4.0"
gem 'connection_pool', "~> 2.4"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
gem 'geocoder'
gem 'timezone'
gem 'timezone_finder'

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem 'simplecov', require: false
end

group :development do
  gem "web-console"

end

group :test do
  gem 'rspec-rails', '~> 6.1'
end

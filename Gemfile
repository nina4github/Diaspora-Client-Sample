source 'http://rubygems.org'

gem 'rails', '3.0.9'

gem 'sqlite3'
gem "haml-rails"
gem "jquery-rails"

gem 'devise', '~> 1.2.1'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger (ruby-debug for Ruby 1.8.7+, ruby-debug19 for Ruby 1.9.2+)
# gem 'ruby-debug'
# gem 'ruby-debug19', :require => 'ruby-debug'

# Bundle the extra gems:
# gem 'bj'
gem 'nokogiri'
# gem 'sqlite3-ruby', :require => 'sqlite3'
# gem 'aws-s3', :require => 'aws/s3'

# Diaspora
gem 'diaspora-client', #:git => 'git://github.com/diaspora/diaspora-client.git'
                       :path => "~/workspace/diaspora-client"



group :test do
  gem 'capybara', '~> 0.3.9'
  gem 'rest-client'
  gem 'database_cleaner', '0.6.0'

  gem 'cucumber-rails', '0.3.2'
  gem 'factory_girl_rails', :require => false
  gem 'rspec-rails', '~> 2.4'
  gem 'shoulda-matchers'
end

group :development, :test do
  gem "nifty-generators"
  gem 'sqlite3'
  gem 'ruby-debug-base19', '0.11.23' if RUBY_VERSION.include? '1.9.1'
  gem 'ruby-debug19' if RUBY_VERSION.include? '1.9'
  gem 'ruby-debug' if defined?(Rubinius).nil? && RUBY_VERSION.include?('1.8')
end



source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.1'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use SCSS for stylesheets
# gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
#gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# needed for deploy restarts and other things
gem 'passenger'

gem 'blacklight', ">= 5.3.0"
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw]


# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

#gem 'mysql2'

# http://stackoverflow.com/questions/9474605/bundler-rails-require-different-gem-in-development
# see comment by mcasimir

# this allows you to use an environment of RAILS_ENV=local_engines
# to test engines locally on your machine and make changes without having to
# commit and push them each time.
#
# Examples in this environment:
# RAILS_ENV=local_engines bundle
#
# and any environment-type commands through similar like below:
# RAILS_ENV=local_engines bundle exec rails s
if ENV['RAILS_ENV'] == 'local_engines'
  gem 'stash_engine', path: '../stash_engine'
  gem 'datacite', path: '../datacite'
else
  gem 'stash_engine', :git => 'https://github.com/bhavi/stash_engine.git', :branch => 'master'
  gem 'datacite', :git => 'https://github.com/bhavi/stash_datacite_prototype.git', :branch => 'master'
end

gem 'bootstrap-sass', '~> 3.3.5'
gem 'sass-rails', '>= 3.2'
gem 'autoprefixer-rails'

# gem "jquery-fileupload-rails"
# gem "paperclip", "~> 4.2"
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :development do
  gem 'capistrano-rails'
  gem 'highline'
end


gem 'jettywrapper', '>= 2.0'
gem 'rsolr', '~> 1.0.6'
gem 'devise'
gem 'devise-guests', '~> 0.3'
gem 'blacklight-marc', '~> 5.0'
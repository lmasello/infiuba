source 'https://rubygems.org'

ruby '2.3.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use fontawesome for common icons
gem 'font-awesome-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'

gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use autoprefixer to avoid writing css prefixes
gem 'autoprefixer-rails'

gem 'bootstrap-sass'

gem 'carrierwave'

# Authentication
gem 'devise'

gem 'responders'

gem 'active_model_serializers'

gem 'foreman'

# Active Admin
gem 'activeadmin', git: 'https://github.com/activeadmin/activeadmin'
gem 'inherited_resources', git: 'https://github.com/activeadmin/inherited_resources'

# Enables Slim templates
gem 'slim-rails'

# Authorization Policies
gem 'pundit'

# Exceptions Report
gem 'rollbar'

# Postgres Insights
gem 'pghero'

# SEO Meta Tags
gem 'meta-tags'
gem 'metamagic'

gem 'newrelic_rpm'

gem 'recipient_interceptor'

gem 'jwt'
gem 'versionist'

# A Scope & Engine based, clean, powerful, customizable and sophisticated paginator for modern web
# app frameworks and ORMs
gem 'kaminari'

gem 'animate-rails'
gem 'owlcarousel-rails'
gem 'redcarpet'
gem 'wow-rails'

group :development do
  # Gem to detect N+1 queries
  gem 'better_errors'
  gem 'bullet'
  gem 'listen', '~> 3.0.5'
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  # Spring speeds up development by keeping your application running in the background. Read more:
  # https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :development, :test do
  gem 'awesome_print'

  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri

  gem 'factory_girl_rails'
  gem 'faker'

  # Use for storing credentials and not uploading them to github
  gem 'dotenv-rails'

  # Lints
  gem 'rubocop'
  gem 'scss_lint', require: false

  # Static analysis for security vulnerabilities
  gem 'brakeman', require: false
end

group :test do
  gem 'database_cleaner'
  gem 'rspec-mocks'
  gem 'rspec-rails'
  gem 'shoulda-matchers'

  gem 'capybara'
  gem 'formulaic'
  gem 'launchy'

  gem 'timecop'
  gem 'webmock'

  # CodeStats
  gem 'codestats-metrics-reporter', require: nil
  gem 'rubycritic', require: false
  gem 'simplecov', require: false
end

group :production do
  gem 'rails_12factor'
end

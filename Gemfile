source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.1.5'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails'
  gem 'capybara'
  gem 'factory_bot_rails'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# Added at 2018-07-24 20:17:58 -0600 by sabrinarobinson:
gem "pry", "~> 0.11.3"

# Added at 2018-07-25 09:02:08 -0600 by sabrinarobinson:
gem "faraday", "~> 0.15.2"

# Added at 2018-07-25 09:38:23 -0600 by sabrinarobinson:
gem "figaro", "~> 1.1"

# Added at 2018-07-25 11:57:39 -0600 by sabrinarobinson:
gem "launchy", "~> 2.4"

# Added at 2018-07-25 12:10:56 -0600 by sabrinarobinson:
gem "webmock", "~> 3.4"

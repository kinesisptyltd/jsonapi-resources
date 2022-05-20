source 'https://rubygems.org'

gemspec

version = ENV['RAILS_VERSION'] || 'default'

platforms :ruby do
  gem 'pg'

  if version.start_with?('4.2', '5.0')
    gem 'sqlite3', '~> 1.3.13'
  else
    gem 'sqlite3', '~> 1.4'
  end
end

platforms :jruby do
  gem 'activerecord-jdbcsqlite3-adapter'
end

case version
when 'master'
  gem 'railties', { git: 'https://github.com/rails/rails.git' }
  gem 'arel', { git: 'https://github.com/rails/arel.git' }
when 'default'
  gem 'railties', '>= 6.0'
  gem 'rails', '>= 6.0'
else
  gem 'railties', "~> #{version}"
  gem 'rails', "~> #{version}"
end

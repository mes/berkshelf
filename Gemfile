source 'https://rubygems.org'

gemspec

group :changelog do
  gem "github_changelog_generator", git: "https://github.com/tduffield/github-changelog-generator", branch: "adjust-tag-section-mapping"
end

group :guard do
  gem 'coolline'
  gem 'guard'
  gem 'guard-cucumber'
  gem 'guard-rspec'
  gem 'guard-spork'

  require 'rbconfig'

  if RbConfig::CONFIG['target_os'] =~ /darwin/i
    gem 'growl', require: false
    gem 'rb-fsevent', require: false

    if `uname`.strip == 'Darwin' && `sw_vers -productVersion`.strip >= '10.8'
      gem 'terminal-notifier-guard', '~> 1.5.3', require: false
    end rescue Errno::ENOENT

  elsif RbConfig::CONFIG['target_os'] =~ /linux/i
    gem 'libnotify',  '~> 0.8.0', require: false
    gem 'rb-inotify', require: false

  elsif RbConfig::CONFIG['target_os'] =~ /mswin|mingw/i
    gem 'rb-notifu', '>= 0.0.4', require: false
    gem 'wdm', require: false
    gem 'win32console', require: false
  end
end

group :build do
  gem 'rake',          '>= 10.1'
end

group :development do
  # these all deliberately float because berkshelf has a Gemfile.lock that
  # equality pins them.  temporarily pin as necessary for API breaks.
  gem 'aruba',         '>= 0.10.0'
  gem 'chef-zero',     '>= 4.0'
  gem 'dep_selector',  '>= 1.0'
  gem 'fuubar',        '>= 2.0'
  gem 'rspec',         '>= 3.0'
  gem 'spork',         '>= 0.9'
  gem 'test-kitchen',  '>= 1.2'
  gem 'webmock',       '>= 1.11'
  gem 'yard',          '>= 0.8'
  gem 'http',          '>= 0.9.8'
  gem 'activesupport', '~> 4.0'  # pinning for ruby 2.1.x
end

group :test do
  gem "berkshelf-api", git: "https://github.com/berkshelf/berkshelf-api.git", ref: "9fb3d95779c4ff72b0074072105caaf70b978bf0"
end

gem 'faraday-http-cache',
    git: 'https://github.com/mes/faraday-http-cache.git',
    branch: 'update-faraday'

gem 'octokit',
    git: 'https://github.com/mes/octokit.rb.git',
    branch: 'update-faraday'

gem 'ridley',
    git: 'https://github.com/mes/ridley.git',
    branch: 'update-faraday'

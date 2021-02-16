# -*- encoding: utf-8; mode: ruby -*-
require File.expand_path('../lib/berkshelf/version', __FILE__)

Gem::Specification.new do |s|
  s.authors               = [
    'Jamie Winsor',
    'Josiah Kiehl',
    'Michael Ivey',
    'Justin Campbell',
    'Seth Vargo'
  ]
  s.email                 = [
    'jamie@vialstudios.com',
    'jkiehl@riotgames.com',
    'michael.ivey@riotgames.com',
    'justin@justincampbell.me',
    'sethvargo@gmail.com'
  ]

  s.description               = %q{Manages a Cookbook's, or an Application's, Cookbook dependencies}
  s.summary                   = s.description
  s.homepage                  = 'http://berkshelf.com'
  s.license                   = 'Apache 2.0'
  s.files                     = `git ls-files`.split($\)
  s.executables               = s.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  s.test_files                = s.files.grep(%r{^(test|spec|features)/})
  s.name                      = 'berkshelf'
  s.require_paths             = ['lib']
  s.version                   = Berkshelf::VERSION
  s.required_ruby_version     = '>= 2.2.0'
  s.required_rubygems_version = '>= 2.0.0'

  s.add_dependency 'addressable',          '~> 2.3', '>= 2.3.4'
  s.add_dependency 'berkshelf-api-client', '~> 4.0.1'
  s.add_dependency 'buff-config',          '~> 2.0'
  s.add_dependency 'buff-extensions',      '~> 2.0'
  s.add_dependency 'buff-shell_out',       '~> 1.0'
  s.add_dependency 'cleanroom',            '~> 1.0'
  s.add_dependency 'httpclient',           '~> 2.7'
  s.add_dependency 'minitar',              '~> 0.5', '>= 0.5.4'
  s.add_dependency 'retryable',            '~> 2.0'
  s.add_dependency 'solve',                '> 2.0', '< 4.0'
  s.add_dependency 'thor',                 '~> 0.19', '< 0.19.2'
  s.add_dependency 'mixlib-archive',       '~> 0.1'
end

# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'threads-net/version'

Gem::Specification.new do |s|
  s.name        = 'threads-net'
  s.version     = Threads::VERSION
  s.summary     = 'API wrapper for http://threads.net'
  s.description = 'API wrapper for http://threads.net'
  s.authors     = ['czhc']
  s.email       = 'hello@czhc.dev'
  s.homepage    =
    'https://rubygems.org/gems/threads-net'
  s.license = 'MIT'

  s.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  s.required_ruby_version = '>= 2.7.0'

  s.require_paths = ['lib']

  s.add_dependency 'http', '~> 5.1.1'
  s.add_development_dependency 'bundler', '~> 2.4.15'
  s.add_development_dependency 'pry', '~> 0.14.2'
  s.add_development_dependency 'rake', '~> 13.0.6'
  s.add_development_dependency 'rubocop', '~> 1.54'
  s.add_development_dependency 'yard', '~> 0.9.34'

  s.add_development_dependency 'guard', '~> 2.18'
  s.add_development_dependency 'guard-rspec', '~> 4.7'
  s.add_development_dependency 'rspec', '~> 3.12'
  s.add_development_dependency 'simplecov', '~> 0.22'
  s.add_development_dependency 'vcr', '~> 6.2'
  s.add_development_dependency 'webmock', '~> 3.18'
end

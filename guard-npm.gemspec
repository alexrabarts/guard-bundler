# encoding: utf-8
$:.push File.expand_path('../lib', __FILE__)
require 'guard/npm/version'

Gem::Specification.new do |s|
  s.name        = 'guard-npm'
  s.version     = Guard::NpmVersion::VERSION
  s.platform    = Gem::Platform::RUBY
  s.license     = 'MIT'
  s.authors     = ['Yann Lugrin', 'Alex Rabarts']
  s.email       = ['yann.lugrin@sans-savoir.net', 'alexrabarts@gmail.com']
  s.homepage    = 'http://rubygems.org/gems/guard-npm'
  s.summary     = 'Guard gem for npm'
  s.description = 'Guard::Npm automatically install/update your npm package.json when needed'

  s.required_rubygems_version = '>= 1.3.6'
  s.rubyforge_project         = 'guard-npm'

  s.add_dependency 'guard',   '~> 1.1'

  s.add_development_dependency 'rspec', '>= 2.14.1'

  s.files        = Dir.glob('{lib}/**/*') + %w[LICENSE README.md]
  s.require_path = 'lib'
end

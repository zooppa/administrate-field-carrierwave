# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

Gem::Specification.new do |gem|
  gem.name = 'administrate-field-carrierwave'
  gem.version = '0.3.2'
  gem.authors = ['Michele Gerarduzzi']
  gem.email = ['michele.gerarduzzi@gmail.com']
  gem.homepage = 'https://github.com/zooppa/administrate-field-carrierwave'
  gem.summary = 'Carrierwave field plugin for Administrate'
  gem.description = 'A plugin to manage Carrierwave attachments in Administrate'
  gem.license = 'MIT'

  gem.require_paths = ['lib']
  gem.files = `git ls-files`.split("\n")
  gem.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")

  gem.add_runtime_dependency 'administrate', '< 1.0.0'
  gem.add_runtime_dependency 'rails', '>= 4.2', '< 6'

  gem.add_development_dependency 'guard', '~> 2.14'
  gem.add_development_dependency 'guard-rspec', '~> 4.7'
  gem.add_development_dependency 'guard-rubocop', '~> 1.3'
  gem.add_development_dependency 'rake', '~> 12.3'
  gem.add_development_dependency 'rspec', '~> 3.7'
  gem.add_development_dependency 'rubocop', '~> 0.59'
end

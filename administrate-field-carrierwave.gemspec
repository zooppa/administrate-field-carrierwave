$:.push File.expand_path('../lib', __FILE__)

Gem::Specification.new do |gem|
  gem.name = 'administrate-field-carrierwave'
  gem.version = '0.1.2'
  gem.authors = ['Michele Gerarduzzi']
  gem.email = ['michele.gerarduzzi@gmail.com']
  gem.homepage = 'https://github.com/zooppa/administrate-field-carrierwave'
  gem.summary = 'A plugin to upload Carrierwave attachments in Administrate'
  gem.description = gem.summary
  gem.license = 'MIT'

  gem.require_paths = ['lib']
  gem.files = `git ls-files`.split("\n")
  gem.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")

  gem.add_runtime_dependency 'administrate', '~> 0.4.0'
  gem.add_runtime_dependency 'rails', '>= 4.2'
end

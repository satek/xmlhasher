# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'xmlhasher/version'

Gem::Specification.new do |spec|
  spec.name          = 'xmlhasher'
  spec.version       = XmlHasher::VERSION
  spec.authors       = ['Gene Drabkin']
  spec.email         = ['gene.drabkin@gmail.com']
  spec.description   = 'Fast XML to Ruby Hash converter'
  spec.summary       = 'XmlHasher converts XML to Ruby Hash'
  spec.homepage      = 'https://github.com/cloocher/xmlhasher'
  spec.license       = 'MIT'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ['lib']

  spec.required_ruby_version     = Gem::Requirement.new('>= 1.9.3')
  spec.required_rubygems_version = '>= 1.3.6'

  spec.add_dependency 'ox', '~> 2.11'

  spec.add_development_dependency 'bundler', '>= 1.6', '< 3'
  spec.add_development_dependency 'coveralls', '~> 0.8.21'
  spec.add_development_dependency 'minitest', '~> 5.10'
  spec.add_development_dependency 'rake', '~> 12'
  spec.add_development_dependency 'simplecov', '~> 0.14.1'
  spec.add_development_dependency 'test-unit', '~> 3.2'
end

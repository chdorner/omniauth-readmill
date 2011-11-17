# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-readmill/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Christof Dorner"]
  gem.email         = ["christof@chdorner.com"]
  gem.description   = %q{Unofficial OmniAuth strategy for Readmill.}
  gem.summary       = %q{Unofficial OmniAuth strategy for Readmill.}
  gem.homepage      = "https://github.com/chdorner/omniauth-readmill"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = 'omniauth-readmill'
  gem.require_paths = ['lib']
  gem.version       = OmniAuth::Readmill::VERSION

  gem.add_dependency 'omniauth', '~> 1.0'
  gem.add_dependency 'omniauth-oauth2', '~> 1.0'
  gem.add_development_dependency 'rspec', '~> 2.7'
  gem.add_development_dependency 'rack-test'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'webmock'
end

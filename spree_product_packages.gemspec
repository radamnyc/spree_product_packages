# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_product_packages'
  s.version     = '3.0.1'
  s.summary     = 'A quick and dirty way to add packages of items to your cart in one click'
  s.description = 'Through the use of Taxons, a node that has no child taxons but has products can be listed as a package. by clicking the package you are taken to a page where you can add the entire set in one click. This is very rudementary at this point so any help improving is much appreciated.'
  s.required_ruby_version = '>= 2.0.0'

  s.author    = 'adam rosenthal'
  s.email     = 'radamnyc@gmail.com'
  # s.homepage  = 'http://www.spreecommerce.com'

  #s.files       = `git ls-files`.split("\n")
  #s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 3.0.1'

  s.add_development_dependency 'capybara', '~> 2.4'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl', '~> 4.5'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 3.1'
  s.add_development_dependency 'sass-rails', '~> 5.0.0.beta1'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
end

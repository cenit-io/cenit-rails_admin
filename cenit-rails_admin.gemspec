$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require 'cenit/rails_admin/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'cenit-rails_admin'
  s.version     = Cenit::RailsAdmin::VERSION
  s.authors     = ['Maikel Arcia Carrazana']
  s.email       = ['macarci@gmail.com']
  s.homepage    = 'https://github.com/cenit-io/cenit-rails_admin'
  s.summary     = "A mountable engine with the Cenit UX based on RailsAdmin."
  #s.description = "Coming soon..."
  s.license     = 'MIT'

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_runtime_dependency "cenit-config"
  s.add_runtime_dependency "rails_admin", "~> 1.0.0"
end

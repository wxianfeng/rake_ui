$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rake_ui/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rake_ui"
  s.version     = RakeUi::VERSION
  s.authors     = ["wxianfeng"]
  s.email       = ["wang.fl1429@gmail.com"]
  s.homepage    = "https://github.com/wxianfeng/rake_ui/tree/wxianfeng"
  s.summary     = "run Rails rake tasks from web GUI.for rails 3.x"
  s.description = "run Rails rake tasks from web GUI.for rails 3.x"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  # s.add_dependency "rails", "~> 3.2.2"
  # s.add_dependency "jquery-rails"

  # s.add_development_dependency "mysql2"
end

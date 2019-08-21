$:.push File.expand_path('../lib', __FILE__)

require 'workarea/sitemaps/version'

Gem::Specification.new do |s|
  s.name        = 'workarea-sitemaps'
  s.version     = Workarea::Sitemaps::VERSION
  s.authors     = ['Ben Crouse']
  s.email       = ['bcrouse@workarea.com']
  s.homepage    = 'https://github.com/workarea-commerce/workarea-sitemaps'
  s.summary     = 'Sitemaps plugin for the Workarea Commerce Platform'
  s.description = 'Adds a sitemap XML to Workarea Commerce Platform. Handles generating the sitemap and routing to it.'

  s.files = `git ls-files`.split("\n")

  s.license = 'Business Software License'

  s.required_ruby_version = '>= 2.3.0'

  s.add_dependency 'sitemap_generator', '~> 5.3.1'
  s.add_dependency 'workarea', '~> 3.x'
end

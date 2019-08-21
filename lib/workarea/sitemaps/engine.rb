module Workarea
  module Sitemaps
    class Engine < ::Rails::Engine
      include Workarea::Plugin
      isolate_namespace Workarea::Sitemaps
    end
  end
end

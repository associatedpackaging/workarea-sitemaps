Workarea::Storefront::Engine.routes.draw do
  get 'sitemap.xml.gz' => Dragonfly.app(:workarea).endpoint { |*args|
    Workarea::AssetEndpoints::Sitemaps.new(*args).result
  }

  get 'sitemap:index.xml.gz' => Dragonfly.app(:workarea).endpoint { |*args|
    Workarea::AssetEndpoints::Sitemaps.new(*args).result
  }
end

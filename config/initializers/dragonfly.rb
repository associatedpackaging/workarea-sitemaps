Dragonfly.app(:workarea).configure do
  response_header 'Cache-Control' do |job, request, headers|
    if request.path =~ /sitemap/
      'public, max-age=86400' # 1 day (equal to job frequency)
    else
      'public, max-age=31536000' # 1 year (Dragonfly default)
    end
  end
end

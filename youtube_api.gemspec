Gem::Specification.new do |s|
  s.name	= "youtube_api"
  s.version	= "0.0.0"
  s.summary	= "Gem for searching YouTube videos"
  s.description	= "Searches for videos on YouTube using YouTube API v3"
  s.email	= "martynbissett@yahoo.co.uk"
  s.authors	= ["Martyn Bissett"]
  s.homepage	= "https://github.com/martynbiz/youtube_api"
  s.license	= "MIT"
  s.files = ["lib/youtube_api.rb", "README.md", "youtube_api.gemspec"]
  s.add_runtime_dependency "google-api-client", ["~> 0.7.1"]
end

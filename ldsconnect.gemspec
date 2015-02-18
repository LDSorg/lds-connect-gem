Gem::Specification.new do |s|
  s.name        = "ldsconnect"
  s.version     = "1.0.0"
  s.date        = "2015-02-17"
  s.summary     = "OAuth2 (Facebook Connect) authentication strategy for connecting to lds.org thru LDS Connect with Ruby / Sinatra / etc"
  s.authors     = ["AJ ONeal"]
  s.email       = "coolaj86@gmail.com"
  s.files       = ["lib/ldsconnect.rb"]
  s.homepage    = "https://github.com/LDSorg/lds-connect-gem"
  s.license     = "Apache2"

  s.add_dependency "oauth2",        "1.0.0"
end

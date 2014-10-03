Gem::Specification.new do |s|
    
  s.name        = 'zutat'
  s.version     = '0.0.1'
  s.date        = '2014-10-03'
  s.summary     = "Get Soylent recipes from diy.soylent.me."
  s.description = "asurements and even stop measurements."
  s.authors     = ["Eddy Shure"]
  s.files       = `git ls-files`.split($/)
  s.licenses    = ['MIT']
  s.homepage    = 'https://github.com/EddyShure/zutat'
  s.required_ruby_version = '>= 1.9'

  s.add_development_dependency('json')
  s.add_development_dependency('rest-client')  
end

Gem::Specification.new do |s|
    
  s.name        = 'zutat'
  s.version     = '0.1.4'
  s.date        = '2014-10-05'
  s.summary     = "Get Soylent recipes from diy.soylent.me."
  s.description = "Fetch Soylent recipes from diy.soylent.me and get easy-to-use Ruby objects."
  s.authors     = ["Eddy Shure"]
  s.files       = `git ls-files`.split($/)
  s.licenses    = ['MIT']
  s.homepage    = 'https://github.com/EddyShure/zutat'
  s.required_ruby_version = '>= 1.9'

  s.add_development_dependency('json')
end

Gem::Specification.new do |s|
  s.name        = 'string_similarity'
  s.version     = '0.1.0'
  s.summary     = "A Levenshtein string similarity gem"
  s.description = "A string similarity gem using levenshtein distance as the default evaluation method"
  s.authors     = ["Matheus Costa"]
  s.email       = 'luiz.oliveira@bairesdev.com'
  s.files       = [
    "Rakefile",
    "lib/modules/custom-string.rb",
    "lib/string_similarity.rb"
  ]
  s.homepage      = "https://www.bairesdev.com"
  s.require_paths = ["lib"]
  s.license       = 'MIT'
end
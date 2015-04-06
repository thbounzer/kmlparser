Gem::Specification.new do |s|
	s.name = 'kmlparser'
	s.version = '0.0.0'
	s.date = '2015-04-05'
	s.summary = 'kmlfile parser' 
	s.description = 'Parse kml file and obtain an objet representation of it'
	s.add_runtime_dependency "nokogiri", '~> 1.6', '>= 1.6.1' 
	s.add_development_dependency "rspec", '~>3.2', '>= 3.2.0'
	s.authors = ["Carlo Iannaccone"]
	s.email = 'carloiannaccone@gmail.com'
	s.files = ["lib/kmlparser/parser.rb","lib/kmlparser/placemark.rb","lib/kmlparser.rb"]
	s.license = 'MIT'
end

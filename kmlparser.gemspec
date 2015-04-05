Gem::Specification.new do |s|
	s.name = 'kmlparser'
	s.version = '0.0.0'
	s.date = '2015-04-05'
	s.summary = 'kmlfile parser' 
	s.description = 'Parse kml file and obtain an objet representation of it'
	s.add_runtime_dependency "nokogiri"
	s.add_development_dependency "rspec"
	s.authors = ["Carlo Iannaccone"]
	s.email = 'carloiannaccone@gmail.com'
	s.files = ["lib/kmlparser.rb","lib/placemark.rb"]
	s.license = 'MIT'
end

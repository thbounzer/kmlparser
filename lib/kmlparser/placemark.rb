module Kmlparser
	class Placemark

		attr_reader :name
		def initialize(coordinates_string,name)
			@name = name
			@unparsed_coord = String(coordinates_string)
		end

		def coordinates  
			parse_coords	
		end

	private

		def parse_coords field_delimiter=',' 
			coords = @unparsed_coord.split(field_delimiter)
			lon = Float(coords[1]) 	
			lat = Float(coords[0]) 	
			coord_hash = {lat: lat, lon: lon}	
		end 
	end
end

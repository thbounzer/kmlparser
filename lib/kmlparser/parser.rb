require 'nokogiri'
require_relative './placemark.rb'

module Kmlparser
	class Parser
		#	google_geo_api_key: 'AIzaSyBxA3Rm64EyuJXiTAg4s9T_ZzItQhNQ3l4'	
		def initialize(file)
			@xpath = '//xmlns:Placemark[xmlns:Point]'
			@file = file	
			puts @xpath	
		end

		def placemarks
			kml = parse_kml
			filter_placemarks kml
		end

	private

		def parse_kml 
			f = File.open(@file)
			kml = Nokogiri::XML(f)
			f.close
			kml
		end

		def filter_placemarks kml 
			placemarks = []	
			kml.xpath(@xpath).each do |placemark|
				name = placemark.search('name').text
				coords = placemark.search('coordinates').text
				placemarks << Placemark.new(coords,name)
			end
			placemarks	
		end
	end
end

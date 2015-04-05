require 'nokogiri'
require_relative './placemark.rb'

class Kmlparser
	
	def initialize(file,xpath='//xmlns:Placemark[xmlns:Point]')
		@xpath = xpath
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

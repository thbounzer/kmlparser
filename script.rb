require 'kmlparser'
require 'uri'
require 'json'
require 'net/http'

kml = Kmlparser::Parser.new("test/templates/KML_Samples.kml").placemarks

@data  = []
kml.each do |points|
	latlon = points.coordinates
	@uri = URI.parse("https://maps.googleapis.com/maps/api/geocode/json?latlng=#{latlon[:lat]},#{latlon[:lon]}&key=#{api_key}")
	puts @uri
	http = Net::HTTP.new(@uri.host,@uri.port)
	http.use_ssl = true
	http.verify_mode = OpenSSL::SSL::VERIFY_NONE
	request = Net::HTTP::Get.new(@uri.request_uri)
	response =  http.request(request)
	@data << JSON.parse(response.body)
end

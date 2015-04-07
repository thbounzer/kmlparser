require_relative 'spec_helper'

test_file = 'templates/KML_Samples.kml'
kml = Kmlparser::Parser.new(File.open(test_file))

describe Kmlparser do 
	it 'Must return 4 points using the test file' do
		expect(kml.placemarks.count).to eq(4)
	end
	
	it 'Must parse correct coordinates' do 
		expect(kml.placemarks[2].coordinates[:lat]).to eq(-122.0857667006183)
	end

	it 'Must return correct address' do 
		pending
	end
end

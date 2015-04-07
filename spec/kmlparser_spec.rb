require_relative 'spec_helper'

test_file = 'templates/KML_Samples.kml' 

describe Kmlparser, "Basic features" do 
	it 'Must return 4 points using the test file' do
		kml=Kmlparser::Parser.new(File.open(test_file))
		expect(kml.placemarks.count).to eq(4)
	end

end

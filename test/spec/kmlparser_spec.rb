require 'spec_helper'

describe Kmlparser, "Basic features" do 
	it 'Must return 4 points using the test file' do
		kml=Kmlparser::Parser.new(File.open('../templates/KML_Samples.kml'))
		expect(kml.placemarks.count).to eq(4)
	end

end

require 'rails_helper'

RSpec.describe Country, type: :model do 

#to check if cname ,cstate is blank/empty 

	it "has a valid entry " do
		country = Country.new
		country.cname = "India"
		country.cstate = "Karnataka"
		expect(country).to be_valid
	end

	it "has a invalid entry" do
		country = Country.new
		country.cname = ""
		country.cstate = "Madyapradesh"
		expect(country).to_not be_valid
	end


#format validation rspec for cname and cstate ---->format: { with: /\A[a-zA-Z]+\z/ }
	
	it "has a valid format for country and state name,includes only alphabets" do
		country = Country.new
		country.cname = "California"
		country.cstate = "Orange"
		expect(country).to be_valid
	end

	it "has a invalid format for country and state name,includes other characters also" do
		country = Country.new
		country.cname = "Californi18"
		country.cstate = "Orange"
		expect(country).to_not be_valid
	end




end

	# describe Country do
	# 	it {is_expected.to validate_presence_of(:cname)}
	# 	it {is_expected.to validate_presence_of(:cstate)}
	# end
	

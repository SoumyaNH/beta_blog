require 'rails_helper'

RSpec.describe State, type: :model do 

#to check uniqueness of country in state --> each state has 1 country and belongs to 1 country
  it { should validate_uniqueness_of(:country_id).on(:create) } do


end

#     it "uniqueness validation" do
 #    state = State.new
 #    state.sname = "abcabcabc"
 #    state.country_id = "Australia"
 #    expect(article).to be_valid
 #  end

 #    it "uniqueness validation" do
 #    should validate_uniqueness_of(:country_id)
 #    state = State.new
 #    state.sname = "abcabcabc"
 #    state.country_id = "xyzxyz"

 #    expect(article).to_not be_valid
 #  end

	

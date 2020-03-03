require 'rails_helper'

RSpec.describe UserController, type: :controller do

# check association --> state has one country 

	describe "POST #sign_up" do
		context "with valid attributes" do
			it "create new user" do
				post :sign_in, user: attributes_for(:user)
				expect(user.count).to eq(1)
		end

		context "with invalid attributes" do
			it "doesnot create new user" do
				post :sign_in, user: attributes_for(:user)
				expect(user.count).to eq(0)
		end

		
	end	
end
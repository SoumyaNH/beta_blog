require 'rails_helper'

RSpec.describe CountriesController, type: :controller do
	describe 'Country controller request spec' do

	let!(:country) { Country.create(cname: 'Rcountryname', cstate: 'Rstatename') }

		context 'GET #index' do 
		    it 'should success and render to index page' do
		    get :index
		    expect(response).to have_http_status(200)
		    expect(response).to render_template :index
		   	end
		end

		context 'GET #edit' do
 
		  	it 'should success and render to edit page' do
		    get :edit, params: { id: "#{country.id}" }
		    expect(response).to have_http_status(200)
		    expect(response).to render_template :edit
	    	end
	    end

	    context 'PUT #update' do       #put/patch
 			#upadte is nothing but it goes as edit and goes to edit page so-->
		  	it 'should success and render to edit page' do
		    get :edit, params: { id: "#{country.id}" }
		    expect(response).to have_http_status(200)
		    expect(response).to render_template :edit
	    	end
	    end


   	 	# 	it 'should success and render to edit page' do
		    # put :update, params: { id: "#{country.id}" }
		    # expect(response).to have_http_status(200)
		    # expect(response).to render_template :edit


  	end

	
end





# describe "POST #create" do
# 		context "with valid attributes" do
# 			it "create new country" do
# 				post :create, country: attributes_for(:country)
# 				expect(country.count).to eq(1)
# 			end
# 		end

# 		context "with invalid attributes" do
# 			it "doesnot create new country" do
# 				post :create, country: attributes_for(:country)
# 				expect(country.count).to eq(0)
# 			end
# 		end



# 	end

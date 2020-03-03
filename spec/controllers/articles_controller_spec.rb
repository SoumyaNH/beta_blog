require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do
	describe 'Articles controller request specs' do
	
   	let!(:article) { Article.create(title: 'showarticle', description: 'showarticle description') }

	context 'GET #index' do 
	    it 'should success and render to index page' do
	    get :index
	    expect(response).to have_http_status(200)
	    expect(response).to render_template :index
	   	end
  	end

  	context 'GET #edit' do
 
	  	it 'should success and render to edit page' do
	    get :edit, params: { id: "#{article.id}" }
	    expect(response).to have_http_status(200)
	    expect(response).to render_template :edit
    	end
   	end 

   	context 'PUT #update' do       
		  	it 'should success and render to edit page' do
		    get :edit, params: { id: "#{article.id}" }
		    expect(response).to have_http_status(200)
		    expect(response).to render_template :edit
	    	end
	    end

  end
end



# #     # let(:valid_attributes) {
# #     #     { :title => "Test title 21", :description => "This is a test description"}
# #     # }

# #     # let(:valid_session) { {} }

# #     # describe "GET #index" do
# #     #     it "returns a success response" do
# #     #         Article.create! valid_attributes
# #     #         get :index, params: {}, session: valid_session
# #     #         expect(response).to be_successful 
# #     #         #expect(response).to have_http_status(302)
# #     #     end
# #     # end

# #     # let(:valid_attributes) {
# #     #     { :title => "Test title 2221", :description => "This is a test description"}
# #     # }

# #     # let(:valid_session) { {} }

# #     # describe "GET #create" do
# #     #     it "returns a success response" do
# #     #         Article.create! valid_attributes
# #     #         get :index, params: {}, session: valid_session
# #     #         expect(response).to be_successful 
# #     #         #expect(response).to have_http_status(302)
# #     #     end
# #     # end

    

 
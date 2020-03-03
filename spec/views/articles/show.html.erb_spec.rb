
require 'rails_helper'

describe "the show process", type: :view do
  let(:article) { 
    Article.create(title: 'showarticle', description: 'showarticle description')
  }

  it "shows me title and description" do
    visit "/articles/#{article.id}"
    # within("#article") do                #try with --> within(#show)
    #   fill_in 'title', with: 'showarticle'
    #   fill_in 'description', with: 'showarticle description'
    # end
    # click_button 'Show'
    expect(page).to have_content 'showarticle'
  end
end




# require 'rails_helper'

# RSpec.describe 'articles/show', type: :view do
#   it 'renders form content' do
#     render

#     expect(view.content_for(:title)).to eq t(:article_title_translation)
#     # => expect(view.content_for(:title)).to eq t(:testarticle)
#     #expect(rendered).to render_template(partial: 'shared/_sidebar')
#     expect(rendered).to render_template(partial: 'form')

#   end
# end

# describe 'articles/show.html.erb' do
#   it 'displays article details correctly' do
#     assign(:article, Article.create(title: 'myviewtestarticle', description: 'description of myviewtestarticle'))

#     render

#     # rendered.should contain('myviewtestarticle')
#     # rendered.should contain('description of myviewtestarticle')

#      rendered.should have_selector("table#article#{@article.id} tbody tr:nth-of-type(1) td:nth-of-type(1)", text: 'myviewtestarticle')
#      rendered.should have_selector("table#article#{@article.id} tbody tr:nth-of-type(1) td:nth-of-type(1)", text: 'description of myviewtestarticle')
#   end
# end
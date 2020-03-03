require 'rails_helper'

RSpec.describe Article, type: :model do

#to check uniqueness of title
  it { should validate_uniqueness_of(:title).on(:create ) }
  #,:edit

# to check if title and descripion is blank/empty/nil

  it "has a valid factory" do
    article = Article.new
    article.title = "my article123"
    article.description = "this is my article for rspec test $"

    expect(article).to be_valid
  end

  it "has a invalid factory" do
    article = Article.new
    article.title = nil
    article.description = "this is my article for rspec test $"

    expect(article).to_not be_valid
  end

#exclusion validation rspec: { in: %w($ & % #)}

  it "has a valid title name without special characters $ & % #" do
    article = Article.new
    article.title = "exclusion article"
    article.description = "this is my article for rspec exclusion validation "
    #expect(article).to be_valid
  end

  it "has a invalid title name with special characters $ & % #" do
    article = Article.new
    article.title = "exclu$ion article"
    article.description = "this is my article for rspec exclusion valiation "
    #expect(article).to_not be_valid
  end

# length validation rspec title and description----> length:{minimum: 4,maximum:200},

  it "has a valid factory" do
    article = Article.new
    article.title = "length test article"
    article.description = "this is my article for rspec length test $"

    expect(article).to be_valid
  end

  it "has a invalid factory" do
    article = Article.new
    article.title = "ar"
    article.description = "test"

    expect(article).to_not be_valid
  end


end

# absence validation rspec for description ----> absence: true

  # it "has a valid description" do
  #   article = Article.new
  #   article.title = "absence article"
  #   article.description = ""

  #   expect(article).to be_valid
  # end

  # it "has a invalid description" do
  #   article = Article.new
  #   article.title = "absence article"
  #   article.description = "this is my article for rspec absence: true test"

  #   expect(article).to_not be_valid
  # end





  # subject { Article.new(title: "Super", descriptiom: "ABC")}
  # before {subject.save}
	# describe Article do
	#     it { is_expected.to validate_presence_of(:title) }
	#     it { is_expected.to validate_presence_of(:description) }
	# end





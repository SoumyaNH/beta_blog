class ArticlesController < ApplicationController

	before_action :set_article, only: [:edit,:update,:show,:destroy]


	def index

		@articles = Article.paginate(page: params[:page], per_page: 4).search(params[:search])

	end

	def new
		@article=Article.new
	end	


	def edit	

	end


	def create
		#render plain: params[:article].inspect
		@article=Article.new(article_params)
		#@article.user=User.first
		if @article.save
			flash[:notice]="Article was successfully created !"
			#flash ----> wrapped in layouts-- application.html.erb
			redirect_to article_path(@article)
		else
			render 'new'
			#or ------> render :new 
		end
	end

	def update

		
		if @article.update(article_params)
			flash[:notice]="Article was successfully updated !"
			redirect_to article_path(@article)
		else
			render 'edit'
		end
	end

	def show
		#need id to show article		
	end

	def destroy
		
		@article.destroy
		flash[:notice]="Article was successfully Deleted !"
		redirect_to article_path(@article)
	end

	def set_article

		@article=Article.find(params[:id])

	end

	private
	def article_params
		params.require(:article).permit(:title,:description)
	end

end
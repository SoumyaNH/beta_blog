class Article < ActiveRecord::Base

	
	validates :title,presence: true,length:{minimum: 3,maximum:200},if: :can_validate?
	validates :description,presence: true,length:{minimum: 5,maximum:200},if: :can_validate?
	#validates :user_id,presence:true



def self.search(search)
	where("title LIKE ?", "%#{search}%")
end 

# set per_page globally

def can_validate?
    true
end


end	




#search: "%#{@title}%"
#title LIKE ?", "%#{search}%"

#if search.present?
		#Article.where(title: search)
	#else 
		#Article.all
		#Article.where(title LIKE ?", "%#{search}%")
	#end
#end
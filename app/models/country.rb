class Country < ApplicationRecord
	has_many :states

	validates_associated :states

	validates :cname, presence: true, length:{minimum: 3,maximum:200} , 
			   format: { with: /\A[a-zA-Z]+\z/}
	validates :cstate,presence: true,length:{minimum: 5,maximum:200} ,
	      	   format: { with: /\A[a-zA-Z]+\z/}
	      	   
end

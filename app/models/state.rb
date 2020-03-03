class State < ApplicationRecord
	belongs_to :country
	validates :country_id, presence: true, uniqueness: true, on: :create

	
end

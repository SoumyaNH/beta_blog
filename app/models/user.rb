class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :email, confirmation: true , 
  			  #:exclusion => {:in => ['$', '&', '%', '#']} , :inclusion => {:in => ['com', 'in']}
  			  exclusion: { in: %w($ & % #)}
  validates :email_confirmation, presence: true 
  			#:exclusion => {:in => ['$', '&', '%', '#']} , :inclusion => {:in => ['com', 'in']}
  validates :password_confirmation, presence: true
  validates :password, presence: true, length: { minimum: 5 }
end

require 'rails_helper'

RSpec.describe User, type: :model do 

# confirmation validation rspec ----> email and password confirmation 
#sign_up of user 

	it " has a valid entry" do
		user = User.new
		user.email = "snh@gmail.com"
		user.password = "12qw!@QW"
		user.email_confirmation = "snh@gmail.com"
		user.password_confirmation = "12qw!@QW"
		expect(user).to be_valid
	end

	it "has a invalid entry" do
		user = User.new
		user.email = "snh@gmail.com"
		user.password = "12qw!@QW"
		user.email_confirmation = "snnnnt@gmail.com"
		user.password_confirmation = "12qw!@QW"
		expect(user).to_not be_valid
	end		


#exclusion validation rspec ----> exclusion: { in: %w($ & % #),

	it " has a valid email" do
		user = User.new
		user.email = "bitla123@gmail.com"
		user.password = "12345678"
		user.email_confirmation = "bitla123@gmail.com"
		user.password_confirmation = "12345678"
		expect(user).to be_valid
	end

	it " has a invalid email" do
		user = User.new
		user.email = "bit$a123@gmail.com"
		user.password = "12345678"
		user.email_confirmation = "bit$a@gmail.com"
		user.password_confirmation = "12345678"
		expect(user).to_not be_valid
	end

#inclusion validation rspec ----> :inclusion => {:in => ['.com', '.in']}

	# it " has a valid email domain" do
	# 	user = User.new
	# 	user.email = "bitla123@gmail.com"
	# 	user.password = "12345678"
	# 	user.email_confirmation = "bitla@gmail.com"
	# 	user.password_confirmation = "12345678"
	# 	expect(user).to be_valid
	# end

	# it " has a invalid email domain" do
	# 	user = User.new
	# 	user.email = "bitla123@gmail.ss"
	# 	user.password = "123456789"
	# 	user.email_confirmation = "bitla123@gmail.ss"
	# 	user.password_confirmation = "123456789"
	# 	expect(user).to_not be_valid
	# end

end
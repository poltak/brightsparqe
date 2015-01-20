class User < ActiveRecord::Base
	before_save { self.email = email.downcase }
	
	validates :fname, presence:true, length:{ maximum:50}
	validates :lname, presence:true, length:{ maximum:50}
	validates :email, presence:true, length:{maximum:255}, 
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	format:{with:VALID_EMAIL_REGEX},uniqueness: {case_sensitive: false }
end

class Feedback < ActiveRecord::Base
	validates :fname, presence:true, length:{ maximum:50}
	validates :lname, presence:true, length:{ maximum:50}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence:true, length:{maximum:255}, format:{with:VALID_EMAIL_REGEX}
	validates :comments, presence:true
end

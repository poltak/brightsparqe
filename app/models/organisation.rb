class Organisation < ActiveRecord::Base
	validates :oname, presence: true,length:{maximum:255}, uniqueness: true
	validates :cname, presence: true,length:{maximum:255}
	validates :phone, presence: true, length:{maximum:50}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence:true, length:{maximum:255},format:{with: VALID_EMAIL_REGEX}
end

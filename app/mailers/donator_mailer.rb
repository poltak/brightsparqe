class DonatorMailer < ApplicationMailer
	default from: 'linkchiu007@gmail.com'

	def success_email(donation)
		@donation = donation
		mail to:@donation.email, subject:"success donation"
	end
end

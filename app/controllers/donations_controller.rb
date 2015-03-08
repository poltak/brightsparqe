class DonationsController < ApplicationController
  def new
  	@donation = Donation.new
  end

  def create
  	# @donation = Donation.new(address:params[:address])
  	# @donation.save
  	# puts params[:card_token]
  	
  end

  def show
  	@card_token = params[:card_token]
  	debugger
  end
end

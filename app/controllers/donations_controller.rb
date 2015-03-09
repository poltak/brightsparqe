require "net/http"
require "uri"
class DonationsController < ApplicationController
  def new
  	uri = URI.parse("http://google.com/")

# Shortcut
response = Net::HTTP.get_response(uri)

# Will print response.body
Net::HTTP.get_print(uri)
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

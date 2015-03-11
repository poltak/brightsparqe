require "net/http"
class DonationsController < ApplicationController
  def new
  	@donation = Donation.new
  end

  def create
  	@token = params[:card_token]
	uri = URI.parse('https://test-api.pin.net.au/1/charges')
	res = Net::HTTP.start(uri.host, uri.port,:use_ssl => uri.scheme == 'https') do |http|
		req = Net::HTTP::Post.new(uri.path)
		req.basic_auth '6gf2Czf2xc4VoNpy3waq1Q', ' '
		req.set_form_data({'email' => 'linkchiu007@gmail.com','amount' => '800', 
			'currency' => "USD",'description' => 'for test charge','ip_address' => '118.139.3.129','card_token' => @token})
		http.request(req)
	end
	case res
	when Net::HTTPSuccess, Net::HTTPRedirection
		render 'success'
	else
		render 'failure'
	end
  	 # @donation = Donation.new(address:params[:address])
  	 # @donation.save
  	# puts params[:card_token]

  end

  def success
  	@card_token = params[:card_token]
  	debugger
  end
end

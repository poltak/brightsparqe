require "net/http"
class DonationsController < ApplicationController
  def new
  	@donation = Donation.new
  end

  def create

  	@token = params[:card_token]
  	@email = params[:email]
  	@name = params[:name]
  	 @phone_number = params[:phone]
  	@description = params[:description]
    @message = params[:description]
    @amount = params[:amount].to_f
    @amount_post = (@amount*100).to_i #post时需要四位整数
    @address = params[:address]
    @city = params[:city]
    @state = params[:state]
    @country = params[:country]
    @postcode = params[:postcode]
    # @donation = Donation.new(name:@name,email:@email,address:@address,phone_number:@phone,suburb:@city,state:@state,country:@country,postcode:@postcode,message:@description,amount:@amount)
  	# puts "#{@name+@email+@description+@address + @city +@country}"
	uri = URI.parse('https://test-api.pin.net.au/1/charges')
	res = Net::HTTP.start(uri.host, uri.port,:use_ssl => uri.scheme == 'https') do |http|
		req = Net::HTTP::Post.new(uri.path)
		req.basic_auth '6gf2Czf2xc4VoNpy3waq1Q', ' '
		req.set_form_data({'email' => @email,'amount' => @amount_post, 'currency' => "AUD",'description' => @description,'ip_address' => '118.139.3.129','card_token' => @token})
		# req.set_form_data({'email' => @email,'amount' => '800', 
		# 	'currency' => "AUD",'description' =>@description,'ip_address' => '118.139.3.129','card_token' => @token})
		http.request(req)
	end
	case res
	when Net::HTTPSuccess, Net::HTTPRedirection
    # if @donation.save
      redirect_to '/donations/show'
  #   else 
		# render 'failure'
  # end    
	else
		render 'failure'
	end
  	 # @donation = Donation.new(address:params[:address])
  	 # @donation.save
  	# puts params[:card_token]

  end

  def show
  end
  def success
  	@card_token = params[:card_token]
  	debugger
  end

end

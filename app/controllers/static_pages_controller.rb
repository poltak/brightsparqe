require "json"
class StaticPagesController < ApplicationController
  def home
    @user = User.new
    @total = Donation.sum(:amount)
    puts "#{@total}........"
    

    # i=1
    # next_hint = 0
    # total_charge = 0
    # loop do
    #   uri = URI("https://test-api.pin.net.au/1/charges?page=#{i}")
    #   puts 'hello..................'
    #   Net::HTTP.start(uri.host, uri.port,:use_ssl => uri.scheme == 'https') do |http|
    #     request = Net::HTTP::Get.new uri
    #     request.basic_auth '6gf2Czf2xc4VoNpy3waq1Q', ' '
    #     response = http.request request # Net::HTTPResponse object
    #     data = JSON.parse(response.body)
    #     p = data["response"]
        
    #      p.each do |charge|
    #       if charge["status_message"] == "Success" 
    #         puts charge["amount"]
    #         total_charge += charge["amount"]
    #       end
    #      end
    #      i=i+1
    #      next_hint = data["pagination"]["next"]
    #   end 
    #   puts next_hint.blank?
    #   break if next_hint.blank?
    # end 
    # puts total_charge/100
    # @total=total_charge/100.to_f
    # puts "#{@total}"

  end

  def about
  end

  def supporters
    @organisation = Organisation.new
  end

  def donations
  end

  def services
    @organisation = Organisation.new
  end
  
  def contact
    @feedback = Feedback.new
  end

end

class StaticPagesController < ApplicationController
  def home
    @user = User.new
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

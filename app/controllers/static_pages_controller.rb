class StaticPagesController < ApplicationController
  def home
    @user = User.new
  end

  def about
  end

  def supporters
    @user = User.new
  end

  def donations
  end

  def services
  end
  
  def contact
  end
end

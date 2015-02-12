class StaticPagesController < ApplicationController
  def home
    @user = User.new
  end

  def about
  end

  def supporters
  end

  def donation
  end

  def contact
  end
end

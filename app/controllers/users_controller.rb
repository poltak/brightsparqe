class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  	debugger #press control+d exit debugger
  end

  def create
  	@user = User.new(user_params)

  	if @user.save
  		render 'static_pages/about'
  	else 
  		redirect_to '/'
  	end
  end

  private

    def user_params
      params.require(:user).permit(:fname, :lname ,:email, :state)
    end
end

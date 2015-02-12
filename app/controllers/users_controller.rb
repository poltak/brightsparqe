class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def index
    redirect_to '/'
  end

  def show
    @user = User.find(params[:id])
  	debugger #press control+d exit debugger
  end

  def create
  	@user = User.new(user_params)

  	if @user.save
      flash[:success] = "sucess..."
  		render 'show'
  	else 
  		# redirect_to '/'
      render 'static_pages/home'
  	end
  end

  private

    def user_params
      params.require(:user).permit(:fname, :lname ,:email, :state)
    end
end

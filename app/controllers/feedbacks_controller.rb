class FeedbacksController < ApplicationController
  def new
  end
  
  def show
  end
  
  def create
  	@feedback = Feedback.new(feedback_params)

  	if @feedback.save
      flash[:success] = "sucess..."
  		render 'show'
  	else 
  		# redirect_to '/'
      render 'static_pages/contact'
  	end
  end

  private

    def feedback_params
      params.require(:feedback).permit(:fname, :lname ,:email, :comments)
    end
end

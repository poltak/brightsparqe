class OrganisationsController < ApplicationController
  def new
  end

  def show
  end
  def create
  	@organisation = Organisation.new(organisation_params)

  	if @organisation.save
      flash[:success] = "sucess..."
  		render 'show'
  	else 
  		# redirect_to '/'
      render 'static_pages/supporters'
  	end
  end

  private

    def organisation_params
      params.require(:organisation).permit(:oname, :cname ,:email, :phone)
    end
end

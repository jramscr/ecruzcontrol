class ServicesRequestsController < ApplicationController

  def new
    @services_request = ServicesRequest.new
  end

  def create
    @services_request = ServicesRequest.new(services_request_params)

    respond_to do |format|
      if @services_request.save
        format.html { redirect_to @services_request }
        format.json { render :show, status: :created, location: @services_request }
        format.js {}
      else
        format.html { render :new }
        format.json { render json: @services_request.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def services_request_params
    params.require(:services_request).permit(:name, :lastname, :phone, :email, :details)
  end
end

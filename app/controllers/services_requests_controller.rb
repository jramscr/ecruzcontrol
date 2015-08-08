class ServicesRequestsController < ApplicationController
  before_action :set_services_request, only: [:show, :edit, :update, :destroy]

  def new
    @services_request = ServicesRequest.new
  end

  def create
    @services_request = ServicesRequest.new(services_request_params)

    respond_to do |format|
      if @services_request.save
        format.html { redirect_to @services_request, notice: 'ServicesRequest was successfully created.' }
        format.json { render :show, status: :created, location: @services_request }
      else
        format.html { render :new }
        format.json { render json: @services_request.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_services_request
    @services_request = ServicesRequest.find(params[:id])
  end

  def services_request_params
    params[:services_request]
  end
end

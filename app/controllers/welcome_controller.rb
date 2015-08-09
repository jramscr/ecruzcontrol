class WelcomeController < ApplicationController
  def home
    @services_request = ServicesRequest.new
  end
end

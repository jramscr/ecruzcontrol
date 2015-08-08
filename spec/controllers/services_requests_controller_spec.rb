require 'rails_helper'

RSpec.describe ServicesRequestsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # ServicesRequest. As you add validations to ServicesRequest, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ServicesRequestsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all services_requests as @services_requests" do
      services_request = ServicesRequest.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:services_requests)).to eq([services_request])
    end
  end

  describe "GET #show" do
    it "assigns the requested services_request as @services_request" do
      services_request = ServicesRequest.create! valid_attributes
      get :show, {:id => services_request.to_param}, valid_session
      expect(assigns(:services_request)).to eq(services_request)
    end
  end

  describe "GET #new" do
    it "assigns a new services_request as @services_request" do
      get :new, {}, valid_session
      expect(assigns(:services_request)).to be_a_new(ServicesRequest)
    end
  end

  describe "GET #edit" do
    it "assigns the requested services_request as @services_request" do
      services_request = ServicesRequest.create! valid_attributes
      get :edit, {:id => services_request.to_param}, valid_session
      expect(assigns(:services_request)).to eq(services_request)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new ServicesRequest" do
        expect {
          post :create, {:services_request => valid_attributes}, valid_session
        }.to change(ServicesRequest, :count).by(1)
      end

      it "assigns a newly created services_request as @services_request" do
        post :create, {:services_request => valid_attributes}, valid_session
        expect(assigns(:services_request)).to be_a(ServicesRequest)
        expect(assigns(:services_request)).to be_persisted
      end

      it "redirects to the created services_request" do
        post :create, {:services_request => valid_attributes}, valid_session
        expect(response).to redirect_to(ServicesRequest.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved services_request as @services_request" do
        post :create, {:services_request => invalid_attributes}, valid_session
        expect(assigns(:services_request)).to be_a_new(ServicesRequest)
      end

      it "re-renders the 'new' template" do
        post :create, {:services_request => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested services_request" do
        services_request = ServicesRequest.create! valid_attributes
        put :update, {:id => services_request.to_param, :services_request => new_attributes}, valid_session
        services_request.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested services_request as @services_request" do
        services_request = ServicesRequest.create! valid_attributes
        put :update, {:id => services_request.to_param, :services_request => valid_attributes}, valid_session
        expect(assigns(:services_request)).to eq(services_request)
      end

      it "redirects to the services_request" do
        services_request = ServicesRequest.create! valid_attributes
        put :update, {:id => services_request.to_param, :services_request => valid_attributes}, valid_session
        expect(response).to redirect_to(services_request)
      end
    end

    context "with invalid params" do
      it "assigns the services_request as @services_request" do
        services_request = ServicesRequest.create! valid_attributes
        put :update, {:id => services_request.to_param, :services_request => invalid_attributes}, valid_session
        expect(assigns(:services_request)).to eq(services_request)
      end

      it "re-renders the 'edit' template" do
        services_request = ServicesRequest.create! valid_attributes
        put :update, {:id => services_request.to_param, :services_request => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested services_request" do
      services_request = ServicesRequest.create! valid_attributes
      expect {
        delete :destroy, {:id => services_request.to_param}, valid_session
      }.to change(ServicesRequest, :count).by(-1)
    end

    it "redirects to the services_requests list" do
      services_request = ServicesRequest.create! valid_attributes
      delete :destroy, {:id => services_request.to_param}, valid_session
      expect(response).to redirect_to(services_requests_url)
    end
  end

end

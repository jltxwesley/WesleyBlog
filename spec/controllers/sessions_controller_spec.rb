require 'spec_helper'

describe SessionsController do

  describe "GET #new" do
    it "returns http success" do
      get :new
      response.should be_success
    end

    it "renders the :new template" do
      get :new
      expect(response).to render_template :new
    end
  end

  describe "POST #create" do
    before :each do
      @user = create(:user)
    end

    context "with valid attributes" do
      before :each do
        post :create, user: attributes_for(:user)
      end

      it "saves the session" do
        expect(session[:user_id]).to be(@user.id)
      end

      it "redirects to the home page" do
        expect(response).to redirect_to root_url
      end

      it "displays login successful message" do
        expect(flash[:notice]).to match(/Logged in successfully!/i)
      end
    end

    context "with invalid attributes" do
      before :each do
        post :create, user: attributes_for(:invalid_user)
      end

      it "does not save the session" do
        expect(session[:user_id]).to be_nil
      end

      it "displays login error message" do
        expect(flash[:alert]).to match(/Invalid username or password!/i)
      end

      it "re-renders the :new template" do
        expect(response).to render_template :new
      end
    end
  end

  describe "DELETE #destroy" do
    before :each do
      @user = create(:user)
      session[:user_id] = @user.id
      delete :destroy
    end

    it "destroys the session" do
      expect(session[:user_id]).to be_nil
    end

    it "redirects to home page" do
      expect(response).to redirect_to root_url
    end

    it "display logout message" do
      expect(flash[:notice]).to match(/Logged out successfully!/i)
    end
  end
end

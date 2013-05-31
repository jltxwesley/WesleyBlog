class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_name(params[:user][:name])
    if user && user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      redirect_to root_url, notice: "Logged in successfully!"
    else
      flash.now.alert = "Invalid username or password!"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out successfully!"
  end
end

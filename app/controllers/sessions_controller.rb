class SessionsController < ApplicationController
  # GET /login
  def new
  end

  # POST /login
  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url
    else
      flash.now.alert = 'Email or password is invalid'
      render :new
    end
  end

  # DELETE /logout
  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end

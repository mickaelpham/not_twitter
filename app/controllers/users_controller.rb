class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  # GET /users/1
  def show
    @tweets = Tweet.where(author: @user).order(created_at: :desc)
  end

  # GET /register
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url
    else
      render :new
    end
  end

  # PATCH/PUT /users/1
  def update
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :username, :password)
  end
end

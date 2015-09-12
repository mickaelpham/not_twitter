class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  # GET /users/1
  def show
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

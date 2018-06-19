class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]
  skip_before_action :authenticate_request
  def index
    @users = User.all
    json_response(@users)
  end

  def show
    json_response(@user)
  end

  def create
    @user = User.create(user_params)
    json_response(@user)
  end

  def update
    @user.update(user_params)
  end

  def destroy
    @user.destroy
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :name)
  end

  def set_user
    @user = User.find(params[:id])
  end

  end

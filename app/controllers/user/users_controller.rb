class User::UsersController < ApplicationController

    before_action :set_user, only: [:show]
    skip_before_action :authenticate_request, only: [:create]

  def show
    json_response(@user)
  end

  def create
    @user = User.create(user_params)
    json_response(@user)
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :name, :admin)
  end

  def set_user
    @user = User.find(params[:id])
  end

end

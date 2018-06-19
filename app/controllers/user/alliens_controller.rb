class User::AlliensController < ApplicationController

    before_action :set_allien, only: [:show]

  def index
    @alliens = Allien.all
    json_response(@alliens)
  end

  def show
    json_response(@allien)
  end

  private

  def allien_params
    params.permit(:name, :image, :desc)
  end

  def set_allien
    @allien = Allien.find(params[:id])
  end

end

class AlliensController < ApplicationController

    before_action :set_allien, only: [:show, :update, :destroy]

  def index
    @alliens = Allien.all
    json_response(@alliens)
  end

  def create
    @allien = Allien.create(allien_params)
    json_response(@alliens, :created)
  end

  def show
    json_response(@allien)
  end

  def update
    @allien.update(allien_params)
    head :no_content
  end

  def destroy
    @allien.destroy
    head :no_content
  end

  private

  def allien_params
    params.permit(:name, :image, :desc)
  end

  def set_allien
    @allien = Allien.find(params[:id])
  end

end

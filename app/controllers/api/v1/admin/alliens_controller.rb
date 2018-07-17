class Api::V1::Admin::AlliensController < Api::V1::Admin::AdminController

    before_action :set_allien, only: [:show, :update, :destroy]

  def index
    @alliens = Allien.all
    paginate json: @posts
  end

  def create
    @allien = Allien.create(allien_params)
    json_response(@allien, :created)
  end

  def show
    json_response(@allien)
  end

  def update
    @allien.update(allien_params)
    json_response(Allien.all)
  end

  def destroy
    @allien.destroy
    json_response(Allien.all)
  end

  private

  def allien_params
    params.permit(:name, :image, :desc)
  end

  def set_allien
    @allien = Allien.find(params[:id])
  end

end

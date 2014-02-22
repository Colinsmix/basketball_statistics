class Api::V1::StatlinesController < ApplicationController
  before_action :set_statline, only: [:show, :update, :destroy]

  # GET /statlines
  def index
    render json: Statline.all
  end

  # GET /statlines/1
  def show
    render json: @statline
  end

  # POST /statlines
  def create
    @statline = Statline.new(statline_params)

    if @statline.save
      render json: @statline, status: :created, location: [:api, :v1, @statline]
    else
      render json: @statline.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /statlines/1
  def update
    if @statline.update(statline_params)
      render json: @statline, status: :ok, location: [:api, :v1, @statline]
    else
      render json: @statline.errors, status: :unprocessable_entity
    end
  end

  # DELETE /statlines/1
  def destroy
    @statline.destroy
    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_statline
    @statline = Statline.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def statline_params
    params.require(:statline).permit(:game_id, :player_id, :points)
  end
end

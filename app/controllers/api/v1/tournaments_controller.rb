class Api::V1::TournamentsController < ApplicationController

  def index
    @tournaments = Tournament.all
    render json: @tournaments
  end

  def show
    @tournament = Tournament.find(params[:id])
    render json: @tournament
  end

  def create
    @tournament= Tournament.new(tournament_params)

    if @tournament.save
      render :json => @tournament, status: :created
    else
      render :json => @tournament, status: :unprocessable_entity
    end
  end

  private

  def tournament_params
    params.require(:tournament).permit(:name, :description, :start_date, :end_date, :sign_up_start, :sign_up_end, :style, :champion)
  end
end

class Api::V1::PlayersController < ApplicationController

  def index
    @players = Player.all
    render json: @players
  end

  def show
    @player = Player.find(params[:id])
    render json: @player
  end

  def create
    @player = Player.new(player_params)

    if @player.save
      render :json => @player, status: :created
    else
      render :json => @player, status: :unprocessable_entity
    end
  end

  def new
    @player= Player.new
  end

  private

  def player_params
    params.require(:player).permit(:name, :twitter_handle, :personal_url, :phone, :bio, :tournament_creator, :city, :state, :zip, :games_won, :games_lost, :games_played, :tournaments_won, :tournaments_lost, :tournaments_played)
  end
end

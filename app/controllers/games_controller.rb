class GamesController < ApplicationController
  # Add your GamesController code here

  def index
    games = Game.all
    render json: games
  end

  def show
    game = Game.find(params[:id])
    render json: game
  end

  def create
    game = Game.create(state: game_params)
    render json: game
  end

  def update
    game = Game.find(params[:id])
    game.update(state: game_params)
    render json: game
  end

  private
    def game_params
      params.require(:state)
    end

end

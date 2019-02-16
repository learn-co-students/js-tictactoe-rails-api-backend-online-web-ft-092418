class GamesController < ApplicationController
  before_action :set_game, only: %i[show update]

  def index
    games = Game.all
    render json: games, status: 200
  end
  
  def create
    game = Game.new()
    game.state = ["X", "", "", "", "", "", "", "", ""]
    game.save
    render json: game, status: 201
  end
  
  def show
    render json: @game, status: 200
  end
  
  def update
    @game.state = params[:state]
    @game.save
    render json: @game, status: 200
  end

  private

  def set_game
    @game = Game.find(params[:id])
  end
end

class GamesController < ApplicationController
  # Add your GamesController code here

  def create
    @game = Game.create(state: params[:state])
    render json: @game, status: 201
  end

  def show
    @game = Game.find(params[:id])
  #  binding.pry
    render json: @game
  end

  def index
    @games = Game.all
    render json: @games, status: 201
  end

  def update
    @game = Game.find(params[:id])
    @game = @game.update( state: params[:state])
    render json: @game, status: 201
  end



end

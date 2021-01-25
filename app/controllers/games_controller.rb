class GamesController < ApplicationController

    def index
        @games = Game.all
    end

    def show
        # byebug
        @game = Game.find_by(id: params[:id])
    end

    private
    
    def game_params
        params.require(:game).permit(:title, :min_players, :max_players)
    end
end

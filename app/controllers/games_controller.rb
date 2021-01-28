class GamesController < ApplicationController

    skip_before_action :authorize, only: [:index, :show]


    def index
        @games = Game.all
    end

    def show
        @game = Game.find_by(id: params[:id])
    end

    private
    
    def game_params
        params.require(:game).permit(:title, :min_players, :max_players)
    end
end

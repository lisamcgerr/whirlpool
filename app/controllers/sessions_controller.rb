class SessionsController < ApplicationController
    def new
        @session = Session.new
    end

    def create
        #byebug
        date = Session
        @session = Session.new(session_params)
        
    end

    private
    def session_params
        params.require(:session).permit(:date, :game_id, :public)
    end
end

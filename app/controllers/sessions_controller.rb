class SessionsController < ApplicationController
    def new
        @session = Session.new
    end

    def create
        byebug
        @session = Session.new(session_params)
        byebug
        
    end


    private
    def session_params
        params["session"]["date"] = generate_date(params) 
        params.require(:session).permit(:date, :game_id, :public)
    end

    def generate_date(params)
        date = DateTime.new(params["session"]["date(1i)"].to_i,
        params["session"]["date(2i)"].to_i,
        params["session"]["date(3i)"].to_i,
        params["session"]["date(4i)"].to_i,
        params["session"]["date(5i)"].to_i
      )
    end
end

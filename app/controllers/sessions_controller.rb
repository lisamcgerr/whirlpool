class SessionsController < ApplicationController
    def new
        @session = Session.new
    end

    def create
        @session = Session.new(session_params)

        if @session.save
            user_session = UserSession.new(user_id: session[:user_id], session_id: @session.id)
            if user_session.save
                redirect_to session_path(@session)
            else
                render :new
            end
        else
            render :new
        end
    end

    def show
        @session = Session.find_by(id: params[:id])
    end


    private
    def session_params
        params["session"]["date"] = generate_date(params) 
        params["session"]["public"] = true_or_false(params)

        params.require(:session).permit(:date, :game_id, :public, :title)
    end

    def generate_date(params)
        date = DateTime.new(params["session"]["date(1i)"].to_i,
        params["session"]["date(2i)"].to_i,
        params["session"]["date(3i)"].to_i,
        params["session"]["date(4i)"].to_i,
        params["session"]["date(5i)"].to_i
      )
    end

    def true_or_false(params)
        if params["session"]["public"].to_i == 1
            true
        else
            false
        end
    end
end

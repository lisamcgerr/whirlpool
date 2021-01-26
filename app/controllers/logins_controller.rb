class LoginsController < ApplicationController

    def new
    end

    def create

        user = User.find_by(username: params[:username])
        if user.try(:authenticate, params[:password])
            session[:user_id] = user.id
            redirect_to user_path(user)
        else
            flash.alert = "Wrong Username or password."
            redirect_to login_path
        end
        
    end

    def logout
        session.delete :user_id
        redirect_to (games_path)
    end

    private

    # def login_params
    #     params.require(:user).permit(:name, :age, :email, :username, :password, :password_confirmation)
    # end
    
end

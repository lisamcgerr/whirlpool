class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)

        if @user.save
            redirect_to login_path
            flash.alert = []
            flash.alert << ["Account created! Please login."]
        else
            render :new
        end
    end

    def show
        @user = User.find_by(id: params[:id])
    end

    private

    def user_params
        params.require(:user).permit(:name, :age, :email, :username, :password, :password_confirmation)
    end
    
end

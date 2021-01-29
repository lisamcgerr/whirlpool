class UsersController < ApplicationController

    skip_before_action :authorize, only: [:new, :create]

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

    def edit
        @user = User.find_by(id: params[:id]) 
    end

    def update
        @user = User.find_by(id: params[:id])
        if @user.update(user_params)
            redirect_to user_path(@user)
        else
            render :edit
        end
    end

    def destroy
        @user = User.find_by(id: params[:id])
        session.delete :user_id
        @user.destroy
        redirect_to home_path
    end

    def new_post
        @post = Post.new
    end

    private

    def user_params
        params.require(:user).permit(:name, :age, :email, :username, :password, :password_confirmation, :avatar)
    end
    
end

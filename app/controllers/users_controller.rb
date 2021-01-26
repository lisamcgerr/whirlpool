class UsersController < ApplicationController

    # def show
    #     @user = User.find_by(id: params[:id])
    # end

    def login
        @user = User.new
    end

    def authenticate
        # byebug
    end

    def show
        @user = User.find_by(id: params[:id])
    end

    
end

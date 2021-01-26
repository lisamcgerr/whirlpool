class LoginsController < ApplicationController

    def create
        byebug

        user = User.find
        # user = User.new(user_params)

        # if user.save
        #     redirect_to user_path(user)
        # else
        #     #flash
        #     render :new
        # end
    end

    private

    # def login_params
    #     params.require(:user).permit(:name, :age, :email, :username, :password, :password_confirmation)
    # end
    
end

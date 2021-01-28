class ApplicationController < ActionController::Base
    
    before_action :authorize
    skip_before_action :authorize, only: [:home]

    def home
    end

    def current_user
        User.find_by(id: session[:user_id]) if session[:user_id]
    end

    def authorize
        if !current_user
            flash.alert = []
            flash.alert << ["Please login or create an account to continue!"]
            redirect_to login_path
        end
    end

end

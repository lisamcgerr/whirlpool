class UserSessionsController < ApplicationController

    def create
        # byebug
        user_session = UserSession.new(user_session_params)

        if user_session.save
            redirect_to session_path(user_session.session)
        else
            flash.alert = []
            flash.alert << user_session.errors.full_messages
            redirect_to session_path(user_session.session)
        end
    end

    def destroy
        user_session = UserSession.find_by(id: params[:user_session][:user_session_id])

        if user_session.delete
            redirect_to session_path(user_session.session)
        else
            render :

    end

    private

    def user_session_params
        params.require(:user_session).permit(:user_id, :session_id)
    end

end

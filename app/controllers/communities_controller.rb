class CommunitiesController < ApplicationController

    skip_before_action :authorize, only: [:index, :show]

    def index
        @communities = Community.all
    end

    def show
        @community = Community.find_by(id: params[:id])
    end

end

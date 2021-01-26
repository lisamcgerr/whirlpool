class CommunitiesController < ApplicationController

    def index
        @communities = Community.all
    end

    def show
        @community = Community.find_by(id: params[:id])
    end

end

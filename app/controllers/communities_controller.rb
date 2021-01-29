class CommunitiesController < ApplicationController

    skip_before_action :authorize, only: [:index, :show]

    def index
        @communities = Community.all
    end

    def new
        @community = Community.new
    end

    def create

        community = Community.new(community_params)
    end

    def show
        @community = Community.find_by(id: params[:id])
    end

    def join_community
        community = Community.find_by(id: params[:id])
        user_community = community.user_communities.build(user_id: current_user.id)

        if user_community.save
            flash.alert = []
            flash.alert << ["Welcome to the community!"]
            redirect_to community_path(community)
        else
            flash.alert = []
            flash.alert << ["Unable to join community."]
            redirect_to community_path(community)
        end
    end

    private

    def community_params
        params["community"]["public"] = true_or_false(params)
        
        params.require(:community).permit(:title, :bio, :public)
    end

    def true_or_false(params)
        if params["community"]["public"].to_i == 1
            true
        else
            false
        end
    end

end

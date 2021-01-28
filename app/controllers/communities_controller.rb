class CommunitiesController < ApplicationController

    skip_before_action :authorize, only: [:index, :show]

    def index
        @communities = Community.all
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

    end

    # def user_community_params
    #     params.require
    # end

end

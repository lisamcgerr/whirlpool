class PostsController < ApplicationController

    def create
        post = Post.new(post_params)

        if post.save
            redirect_to community_path(params[:post][:community_id])
        else
            flash.alert = []
            flash.alert << post.errors.full_messages
            redirect_to new_post_path
        end
    end

    def show
        @post = Post.find_by(id: params[:id])
        @comment = Comment.new
    end
    
    private

    def post_params
        params[:post][:user_id] = current_user.id

        params.require(:post).permit(:content, :community_id, :user_id, :title)
    end
end

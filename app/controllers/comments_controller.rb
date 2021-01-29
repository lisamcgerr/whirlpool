class CommentsController < ApplicationController

    def create
        comment = Comment.new(comment_params)

        if comment.save
            flash.alert = []
            flash.alert << ["Comment added!"]
            redirect_to post_path(comment.post)
        else
            flash.alert = []
            flash.alert << comment.errors.full_messages
            redirect_to post_path(comment.post)
        end
    end

    private

    def comment_params
        params[:comment][:user_id] = current_user.id

        params.require(:comment).permit(:content, :post_id, :user_id)
    end

end

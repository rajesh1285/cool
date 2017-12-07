class CommentsController < ApplicationController

	 def create
	 	@post =@post.find(params[:post_id])
	 	@comment =@post.comments.create(params[:comment].permit(:name,:body))
	 	redirect_to post_path(@post)

	 end

	 def update


	 end
end

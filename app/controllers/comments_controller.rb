class CommentsController < ApplicationController

	 def create
	 	@post = Post.find(params[:post_id])
       
	 	@comment = @post.comments.create(comment_params)
	 	 @comment.user = current_user
	  if @comment.save

	 	redirect_to post_path(@post)

	 end
	end

	 def destroy
		@post = Post.find(params[:post_id])
		@comment = @post.comments.find(params[:id])
		
		
		
		@comment.destroy

		redirect_to post_path(@post)
	
	 end

	 private
	  def comment_params
        params.require(:comment).permit(:name , :body, :user_id, :post_id,:firstname)
	  end
  
  end


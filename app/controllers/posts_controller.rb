class PostsController < ApplicationController

  before_action :authenticate_user!, except: [:index , :show]
  


  def index
    @posts =Post.all.order('created_at DESC ')
  end

  def create
    @post = current_user.posts.build(post_params)
         
      if @post.save
        
      redirect_to @post
    else
      render 'new'
      end
  end

  def new 

   @post = Post.new 

  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
 
    redirect_to posts_path
  end

  def edit

    @post = Post.find(params[:id])

  end


  def update

   @post = Post.find(params[:id])

     if @post.update(post_params)
         redirect_to @post
    else
      render 'edit'
    end

  end
  
  def upvote
    @post = Post.find(params[:id])
    @post.upvote_by current_user
    redirect_back(fallback_location: root_path)
  end

  def downvote
    @post = Post.find(params[:id])
    @post.downvote_by current_user
    redirect_back(fallback_location: root_path)
  end
  


   private 
    def post_params
      params.require(:post).permit(:title,:body,:image,:firstname)
    end

    
end

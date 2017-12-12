class PostsController < ApplicationController
<<<<<<< HEAD

  before_action :authenticate_user!, except: [:index , :show]
  


=======
>>>>>>> origin/master
  def index
    @posts =Post.all.order('created_at DESC ')
  end

  def create
<<<<<<< HEAD
    @post = current_user.posts.build(post_params)
         
      if @post.save
        
=======
    @post = Post.new(post_params)
      if @post.save
>>>>>>> origin/master
      redirect_to @post
    else
      render 'new'
      end
  end

<<<<<<< HEAD
  def new 

   @post = Post.new 
=======
  def new
   @post = Post.new
>>>>>>> origin/master

  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy
<<<<<<< HEAD
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
  
=======
  end

  def edit
  end
>>>>>>> origin/master


   private 
    def post_params
<<<<<<< HEAD
      params.require(:post).permit(:title,:body,:image,:firstname)
=======
      params.require(:post).permit(:title,:body)
>>>>>>> origin/master
    end

    
end

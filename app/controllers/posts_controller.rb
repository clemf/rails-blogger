class PostsController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = 'Post created.'
      redirect_to user_posts_path
    else
      render :new
    end
  end
  
private
  def post_params
    params.require(:post).permit(:title, :text, :user_id)
  end
end

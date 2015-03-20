class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @posts = Post.all.where(user_id: @user.id)
  end

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

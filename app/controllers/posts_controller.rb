class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params.require(:post).permit(:header,:body))
    #hangilerinin izinli olduğunu belirttik
    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  private
  def post_params
    params.require(:post).permit(:header, :body)
  end

end

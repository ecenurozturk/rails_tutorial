class PostsController < ApplicationController
  before_action :find_my_post, only: [:edit, :update, :show, :destroy]
  def new
    @post = Post.new
  end

  def edit
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  def update
    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  def create
    @post = Post.new(params.require(:post).permit(:header,:body))
    #hangilerinin izinli olduğunu belirttik
    if @post.save
      redirect_to @post
    else
      render 'new'
      #new.html.erb ye gidiyor
    end
  end

  def index
    @posts = Post.all
  end

  def show
  end

  private
  def post_params
    params.require(:post).permit(:header, :body)
  end
  #before_action da @post = Post.find_by(id: params[:id]) çok tekrar ediyor diye oluşturuyoruz
  def find_my_post
    @post = Post.find_by(id: params[:id])
  end

end

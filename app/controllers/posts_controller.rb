class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show]

  def more
    @posts = Post.all
    @posts = Post.page(params[:page]).per(2).order('updated_at DESC')
  end

  def index
    @posts = Post.all
    @posts = Post.page(params[:page]).per(3).order('updated_at DESC')
  end
  
  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
  end

  def show
  end

  def edit
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
  end

  private
  def post_params
    params.require(:post).permit(:name, :image, :text)
  end

  def set_post
    @post = Post.find(params[:id])
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end

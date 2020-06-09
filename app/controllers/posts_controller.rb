class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show, :search]


  def index
    @posts = Post.all
    @posts = Post.page(params[:page]).per(10).order('updated_at DESC')
    @post = Post.new
  end

  def create
    Post.create(post_params)
    redirect_to action: :index 
  end

  def show
    @posts = Post.all
    @posts = Post.page(params[:page]).per(10).order('updated_at DESC')
  end

  def edit
    @posts = Post.all
    @posts = Post.page(params[:page]).per(10).order('updated_at DESC')
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)
    redirect_to action: :index 
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to action: :index 
  end

  def search
    @posts = Post.search(params[:keyword])
  
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

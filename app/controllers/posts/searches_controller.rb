class Posts::SearchesController < ApplicationController
  def index
    @posts = Post.search(params[:keyword])
    # 下記@post 上記被らないようpagesにここだけ変えてあります。
    @pages = Post.page(params[:page]).per(10).order('updated_at DESC') 
  end
end

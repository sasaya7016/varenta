class ProductsController < ApplicationController
  def index
    @posts = Post.all
    @posts = Post.page(params[:page]).per(3).order('updated_at DESC')
  end

  def test
  end

  def price
  end

  def hairstyle
  end

  def staff
  end
   
  def shop
  end

  def contact
  end

  def management
  end

  # オンラインショップ投稿
  def new
    # @products = Item.new
  end

end

class ProductsController < ApplicationController
  def index
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

  # オンラインショップ投稿
  def new
    @products = Item.new
  end

end

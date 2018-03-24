class ProductsController < ApplicationController
  def index
    @products = Product.all

  end

  def new
    @product= Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.save
    redirect_to "/products/#{@product.id}"
  end

  def edit
  end

  def update
  end

  def show
    @product = Product.find(params[:id])
  end

  def destroy
  end

  def buy
    @product = Product.find(params[:id])
  end
  private

  def product_params
    params.require(:product).permit(:name, :price, :volume, :description, :user_id, :image_url)
  end
end

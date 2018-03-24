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
  private

  def product_params
    params.require(:product).permit(:product_id, :category_id, :price, :volume, :description, :producer, :image_url)
  end
end

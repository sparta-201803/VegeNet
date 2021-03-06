class ProductsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy, :buy]
  def index
    @q = Product.order(created_at: :desc).ransack(params[:q])
    @products = @q.result(distinct: true)
    @products = @products.where.not(volume: "0")
  end

  def new
    @product= Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to "/products/#{@product.id}"
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
    redirect_to product_path
  end

  def show
    @product = Product.find(params[:id])
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path

  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :volume, :description, :user_id, :image_url)
  end
end

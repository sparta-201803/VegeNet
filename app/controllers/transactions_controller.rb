class TransactionsController < ApplicationController
  def index
  end

  def new
    @transaction = Transaction.new(transaction_params)
  end

  def create
    @transaction = Transaction.new(transaction_params)
    if @transaction.save
      @product = Product.find(@transaction.product_id)
      @product.volume = @product.volume.to_i - @transaction.product_volume.to_i
      @product.save
      redirect_to transaction_path(@transaction)
    else
      render :new
    end
  end

  def buy
    @transaction = Transaction.find(params[:id])
  end

  def edit
  end

  def update
  end

  def show
    @transaction = Transaction.find(params[:id])
  end

  def destroy
  end

  private
  def transaction_params
    params.require(:transaction).permit(
      :user_id,         :seller_id,
      :product_name,    :product_price,
      :product_volume,  :product_user,
      :product_id
    )
  end
end

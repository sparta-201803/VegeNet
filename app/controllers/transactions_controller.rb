class TransactionsController < ApplicationController
  def index
  end

  def new
    @transaction = Transaction.new(transaction_params)
  end

  def create
    @transaction = Transaction.new(transaction_params)
    if @transaction.save
      redirect_to products_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def transaction_params
    params.require(:transaction).permit(:user_id, :seller_id, :product_name, :product_price, :product_volume, :product_user)
  end
end

class CheckoutsController < ApplicationController
  before_action :set_user, only: :new

  def new
    @checkout = Checkout.new
  end

  def create
    @checkout = Checkout.new(checkout_params)
    if @checkout.save!
      redirect_to checkouts_show_path(@checkout)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @baskets = Basket.all
    @checkout = Checkout.find(params[:format])
  end

  private

  def set_user
    @user = User.find_by(first_name: "John")
  end

  def checkout_params
    params.require(:checkout).permit(:delivery_date, :user_id)
  end
end

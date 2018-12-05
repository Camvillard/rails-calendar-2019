class OrdersController < ApplicationController

  def show
    @order = Order.find(params[:id])
  end

  def create
    calendar = Product.find(params[:calendar_id])
    order = Order.new(
      product_name: calendar.name,
      amount: calendar.price,
      state: "pending",
      user_email: params[:user_email]
    )
    order.shipping = Shipping.find_by(price_cents: 1500)
    if order.save
      redirect_to edit_order_path(order)
    elsif order.errors.messages[:user_email].first == "can't be blank"
      flash[:alert] = "email #{order.errors.messages[:user_email].first}"
      redirect_to root_path
    else
      raise
        # flash[:alert] = "something went wrong. please try again or send me an email!"
        # redirect_to root_path
    end
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    # raise
    @order.update(set_order_params)
    if @order.save
      redirect_to confirmation_path(@order)
    else
      raise
    end
  end

  def shipping
    @shippings = Shipping.all
    @order = Order.find(params[:order_id])
  end

  def confirmation
    @order = Order.find(params[:order_id])
    @total_amount = @order.amount + @order.shipping.price
  end

  private

  def set_order_params
    params.require(:order).permit(:first_name, :last_name, :address, :zipcode, :city, :country)
  end
end

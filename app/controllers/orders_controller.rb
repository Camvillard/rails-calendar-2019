class OrdersController < ApplicationController

  def show
    @order = Order.find(params[:id])
  end

  def create
  calendar = Product.find(params[:calendar_id])
  order  = Order.new(
    product_name: calendar.name,
    amount: calendar.price,
    state: "pending",
    user_email: params[:user_email]
    )

  if order.save
    redirect_to new_order_payment_path(order)
  else
    # raise
    if order.errors.messages[:user_email].first == "can't be blank"
      flash[:alert] = "email #{order.errors.messages[:user_email].first}"
      redirect_to root_path
    else
      flash[:alert] = "something went wrong. please try again or send me an email!"
      redirect_to root_path
    end
  end

  end
end

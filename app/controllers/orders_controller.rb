class OrdersController < ApplicationController

  def show
    @order = Order.find(params[:id])
  end

  def create
  calendar = Product.find(params[:calendar_id])
  order  = Order.create!(
    product_name: calendar.name,
    amount: calendar.price,
    state: "pending",
    user_email: params[:user_email]
    )

  redirect_to new_order_payment_path(order)
end
end

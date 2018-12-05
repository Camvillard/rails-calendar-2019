class OrdersController < ApplicationController
  def create
  calendar = Product.find(params[:calendar_id])
  order  = Order.create!(product_name: calendar.name, amount: calendar.price, state: "pending")

  redirect_to new_order_payment_path(order)
end
end

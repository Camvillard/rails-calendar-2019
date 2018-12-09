# Preview all emails at http://localhost:3000/rails/mailers/order_mailer
class OrderMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/order_mailer/thank_you
  def thank_you
    order = Order.first
    OrderMailer.thank_you(order)
  end

end

class OrderMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.thank_you.subject
  #
  def thank_you(order)
    @order = order

    mail(to: order.user_email, subject: "merci pour votre commande !")
  end
end

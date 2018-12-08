class PagesController < ApplicationController
  def home
    @calendar = Product.find_by(name: 'maxi calendrier')
    @order = Order.new
  end

  def styles
  end

  def mentions_legales
  end

  def contact
    @mail = Mail.new
    # UserMailer.contact_me.deliver_now
  end

  def send_mail
    # binding.pry
    @mail = Mail.create(
      email_from: params[:email_from],
      subject: params[:subject],
      message_content: params[:message_content]
      )
    ContactMailer.send_contact_mail(@mail).deliver_now
  end
end

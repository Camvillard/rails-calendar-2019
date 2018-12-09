class MessageMailer < ApplicationMailer
  require 'mailgun'

  def contact_me(message)
    @body = message.body

    mail to: "ca.villard@gmail.com",
         from: message.email,
         subject: "new message from deuxmilledixneuf",
         message_content: message.body
  end
end

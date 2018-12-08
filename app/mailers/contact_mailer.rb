class ContactMailer < ApplicationMailer
  def send_contact_mail(mail_to_send)
    @mail = mail_to_send

    mail(
      to: "hello@camillevillard.com",
      subject: @mail.subject,
    )

  end
end

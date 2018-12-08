class UserMailer < ApplicationMailer
  def contact_me
    # raise
    mail(to: "hello@camillevillard.com",
         subject: params[:subject],

    )
  end
end

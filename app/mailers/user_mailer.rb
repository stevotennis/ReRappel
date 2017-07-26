class UserMailer < ApplicationMailer
  default from: "stevotennis@gmail.com"

  def contact_form(email, name, message)
  @message = message
    mail(from: email,
         to: 'stevotennis@gmail.com',
         subject: "A new contact form message from #{name}")
  end
end

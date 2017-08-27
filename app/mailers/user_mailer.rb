class UserMailer < ApplicationMailer
  default from: "stevotennis@gmail.com"

  def contact_form(email, name, message)
  	@message = message
    mail(from: email,
         to: 'stevotennis@gmail.com',
         subject: "A new contact form message from #{name}")
  end

  def welcome(user)
   	@appname = "ReRappel"
   	mail(to: user.email,
        subject: "Welcome to #{@appname}!")
  end
end

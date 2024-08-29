class UserMailer < ApplicationMailer
  default from: 'lavacashy.sinkevich@gmail.com'

  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'Да это я! Попался!')
  end
end

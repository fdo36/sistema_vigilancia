class UserMailer < ActionMailer::Base
  default from: "admin-noreply@sistemavigilancia.cl"

  def welcome_email(user)
    @user = user
    @url  = 'http://localhost:3000'
    mail(to: @user.email, subject: 'ASDAJSHDOAUSDGAUSDG')
  end
end

class UserMailer < ActionMailer::Base
  layout 'mailer'
  
  default from: "no-reply@facespace.com"
  def welcome(user)
    @user = user
    mail(to: @user.email, subject: 'Welcome to FaceSpace')  
  end
  def leaving(user)
    @user = user
    mail(to: @user.email, subject: 'We are sad you are leaving us.')
  end
    def newsletter(params)
    @params = params
    mail(to: @params[:email], subject: 'Thanks for subscribing.')
  end
end

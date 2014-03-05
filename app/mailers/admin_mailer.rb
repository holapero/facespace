class AdminMailer < ActionMailer::Base
  default from: "contact@example.com"
  default to: 'me@facespace.com'
  def contact_form(params)
    @params = params
    mail(subject: "New contact")
  end
end

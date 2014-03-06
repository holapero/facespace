class AdminMailer < ActionMailer::Base
  default from: "contact@example.com", to: 'me@facespace.com'
  def contact_form(contact)
    @contact = contact
    mail(subject: "New contact")
  end
end

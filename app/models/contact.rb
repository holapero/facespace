class Contact < ActiveRecord::Base
  after_create :mailer
  private
  def mailer
    AdminMailer.contact_form(self).deliver
  end
end

class RegistrationsController < Devise::RegistrationsController
  before_action :leaving_mailer, only:[:destroy,  :cancel]

  protected
  def after_sign_up_path_for(resource)
    # root_path
    users_index_path
  end

  def leaving_mailer
    UserMailer.leaving(current_user).deliver
  end
end
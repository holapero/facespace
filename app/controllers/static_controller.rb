class StaticController < ApplicationController
  def index
  end
  def contact
    if request.post?
      AdminMailer.contact_form(params).deliver
      redirect_to contact_path, notice: 'Thank you for your concern'
    end
  end
end

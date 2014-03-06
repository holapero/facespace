class StaticController < ApplicationController
  def index
  end
  def contact
    @contact = Contact.new
    if request.post?
      @contact.assign_attributes(contact_params)
      if @contact.save
        redirect_to contact_path, notice: 'Thank you for your concern'
      else
        flash[:alert] = "oops"
        render :contact
      end
    end
  end
  def newsletter
    if request.post?
      UserMailer.newsletter(params).deliver
      AdminMailer.newsletter(params).deliver
      redirect_to newsletter_path, notice: 'Thanks for signing up for the newsletter'
    end
  end
  private
  def contact_params
    params.require(:contact).permit(:name, :email, :concern)
  end
end

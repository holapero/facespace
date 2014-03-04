class User < ActiveRecord::Base
  after_create :send_welcome_mail
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable
  private
  def send_welcome_mail
    UserMailer.welcome(self).deliver
  end
end


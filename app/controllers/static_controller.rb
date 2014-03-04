class StaticController < ApplicationController
  def index
  end
  def welcome
    UserMailer.welcome(current_user).deliver
    redirect_to root_path, notice: 'welcome'
  end
end

class Users::RegistrationsController < Devise::RegistrationsController
  include ApplicationHelper

  def create
    super
  #  if UserMailer.welcome_email(current_user).deliver
  #  end
  end

  def new
    super
  end

  def edit
    super
  end
end

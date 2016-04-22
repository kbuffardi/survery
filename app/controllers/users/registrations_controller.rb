class Users::RegistrationsController < Devise::RegistrationsController
  include ApplicationHelper

  def create
    super
    if UserMailer.welcome_email(current_user).deliver
      flash.alert = "Mail sent"
    end
  end

  def new
    super
  end

  def edit
    super
  end
end

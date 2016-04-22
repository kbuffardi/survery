class UserMailer < ActionMailer::Base
  default from: "research.survey.aasblc@gmail.com"

  def welcome_email(current_user)
    @user = current_user
    mail(to: @user.email, subject: 'Test Email')
  end
end

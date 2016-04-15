class VasAnswersController < ApplicationController
  before_filter :authenticate_user!

  def create
    @vas_answer = VasAnswer.new
    @vas_answer.user_id = current_user.id
  end

end

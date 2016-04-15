class VasQuestionsController < ApplicationController
  before_filter :authenticate_user!

  def vas_questions
    @questions = VasQuestion.all
    @survey = current_user.survey
    @foods = @survey.foods
  end


end

class VasQuestionsController < ApplicationController
  before_filter :authenticate_user!

  def vas_questions
    @questions = VasQuestion.all
    @survey = current_user.survey

    @survey.foods.each_with_index do |food, i|
      if i == 0
        @foods = Array.new([food])
      elsif i < 3
        @foods << food
      end
    end


    @question = VasQuestion.find(params[:order])

    @answer = VasAnswer.new
    @answer.user_id = @survey.user_id
    #if 2 or more make more

    if params[:order] != nil
      @q_num = params[:order]
      @q_num = @q_num.to_i
    else
      @q_num = 1
    end
  end
end

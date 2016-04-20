class VasQuestionsController < ApplicationController
  before_filter :authenticate_user!

  def vas_questions
    @questions = VasQuestion.all
    @survey = current_user.survey


    @food_ranks = FoodRank.where(user_id: current_user.id, rank: [0, 1, 2])

    @food_ranks.each_with_index do |rank, i|
      if i == 0
        @foods = Array.new([Food.find(rank.food_id)])
      elsif i < 3
        @foods << Food.find(rank.food_id)
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

class AnswersController < ApplicationController
  before_filter :authenticate_user!

  def create
    @answer = Answer.new(answer_params)
    @q_num = params[:order]
    @q_num = @q_num.to_i + 1
    respond_to do |format|
      if @answer.save
        if @q_num < 25
          format.html { redirect_to vas_questions_url(@q_num) }
        else
          format.html { redirect_to demographics_path}
        end
      end
    end
  end

private
    def answer_params
      params.require(:answer).permit( vas_values: [], user_ids: [], question_ids: [], survey_ids: [], food_ids: [] )
    end
end

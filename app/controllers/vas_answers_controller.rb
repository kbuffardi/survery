class VasAnswersController < ApplicationController
  before_filter :authenticate_user!

  def create
    # all wrong probably :)
    # currently unused
    @survey = current_user.survey
    @answer = VasAnswer.new(answer_params)
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

  def update
    @survey = current_user.survey
    @q_num = params[:order]
    @q_num = @q_num.to_i + 1
    respond_to do |format|
      if @survey.update(survey_params)
        format.html { redirect_to vas_questions_url(@q_num), notice: 'Answer was successfully updated.' }
      else
        flash.alert = "Your error messagess"
      end
    end
  end

private
    def survey_params
      params.require(:survey).permit( values: [], question_number: [] )
    end


end

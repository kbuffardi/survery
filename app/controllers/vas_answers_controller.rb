class VasAnswersController < ApplicationController
  before_filter :authenticate_user!

  def create

    @answer = VasAnswer.new(answer_params[:vas_answers])
    @q_num = params[:order]
    @q_num = @q_num.to_i + 1

    respond_to do |format|
      if @answer.save
        if @q_num < 25
          format.html { redirect_to vas_questions_url(@q_num) }
        else
          format.html { redirect_to demographics_path}
        end
      else
        format.html { render :new }
      end
    end
  end

private
    def answer_params
      params.require(:vas_answers).permit(:value, :user_id)
    end

      # @vas_answer = VasAnswer.new
      # @vas_answer.user_id = current_user.id

end

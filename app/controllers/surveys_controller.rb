class SurveysController < ApplicationController
  def create
    if current_user
      @survey = Survey.new(survey_params)

      respond_to do |format|
        if @survey.save
          format.html { redirect_to survey_food_selection_path, notice: 'Survey was successfully created.' }
        else
          format.html { render :new }
        end
      end
    end
  end

    def survey_params
      params.require(:survey).permit(:user_id, category_ids: [])
    end
end

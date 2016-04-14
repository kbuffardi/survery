class SurveysController < ApplicationController
  before_filter :authenticate_user!
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

  def update
    respond_to do |format|
      @survey = Survey.find(params[:id])
      if @survey.update(survey_params)
        format.html { redirect_to categories_path, notice: 'Survey was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

    def survey_params
      params.require(:survey).permit(:user_id, category_ids: [], food_ids: [])
    end
end

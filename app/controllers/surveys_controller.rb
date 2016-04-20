class SurveysController < ApplicationController
  before_filter :authenticate_user!
  def create
    if current_user
      @survey = Survey.new(survey_params)

      respond_to do |format|
        if @survey.save
          format.html { redirect_to survey_food_selection_path}
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
        if FoodRank.exists?(:user_id => "#{current_user.id}")
          format.html { redirect_to food_ranks_path }
        else
          @survey = current_user.survey
          @foods = @survey.foods
          @foods.shuffle.each do |food| #randomizes foods displayed
            @food_rank = FoodRank.new
            @food_rank.user_id = current_user.id
            @food_rank.food_id = food.id
            if @food_rank.save!
            else
              flash.alert = "Food_rank failed to save"
            end
          end
        end
        format.html { redirect_to food_ranks_path }
      else
        flash.alert = "Your error messagess"
        format.html { render :edit }
      end
    end
  end

    def survey_params
      params.require(:survey).permit(:user_id, category_ids: [], food_ids: [])
    end
end

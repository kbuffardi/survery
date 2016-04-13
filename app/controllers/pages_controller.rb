class PagesController < ApplicationController
  def survey_category_selection
    @categories = Category.all
    @survey = Survey.new
  end

  def survey_food_selection
    @survey = current_user.survey
    @categories = @survey.categories
  end

end

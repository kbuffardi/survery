class PagesController < ApplicationController
  def survey_category_selection
    @categories = Category.all
    @survey = Survey.new
  end
end

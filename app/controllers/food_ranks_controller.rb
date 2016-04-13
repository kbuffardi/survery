class FoodRanksController < ApplicationController
  before_action :set_food_rank, only: [:show, :edit, :update, :destroy] #do we need these
  before_filter :authenticate_user!

  def food_ranking
    @survey = current_user.survey
    @foods = @survey.foods
  end
end

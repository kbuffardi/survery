class FoodRanksController < ApplicationController
  before_filter :authenticate_user!

  before_filter :create

  def create
    @survey = current_user.survey
    @food = @survey.foods

    @food.each_with_index do |food, i|
      @food_rank = FoodRank.new
      @food_rank.user_id = current_user
      @food_rank.food_id = food.id
      @food_rank.row_order = i
      if @food_rank.save!
      else
        flash.alert = "Your error message"
      end
        #redirect_to
    end
  end

  def food_ranking
  #  @food = @survey.find(food_rank_params[:food_id])
  #  @food.row_order_position = food_rank_params[:row_order_position]
  #  @food.save
  #  render nothing: true
  #  @food_rank = FoodRank.new
  #  @food = current_user.survey.foods
  #  @food_rank.save
  # @food_ids = set_foods_params[:food_ids].map(&:to_i)
  end

  def update_row order
    @food_r = FoodRank.find(food_rank_params[:food_id])
    @food_r.row_order_position = food_rank_params[:row_order_position]
    @food_r.save
    render nothing: true
  end

private
  def set_food_rank
    @food = @survey.find(params[:id])
  end

  def food_rank_params
    params.require(:food_rank).permit(:rank, :user_id, :food_id, :row_order_position)
  end

  # def set_foods_params
  #   params.require(:survey).permit(:user_id, :food_id, :food_ids => [])
  # end
end

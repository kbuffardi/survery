class FoodRanksController < ApplicationController


  def food_ranking
    @foods = FoodRank.rank(:row_order).all
  end

  def update_row order
    @food = FoodRank.find(food_rank_params[:food_rank_id])
    @food.row_order_position = food_rank_params[:row_order_position]
    @food.save
    render nothing: true
  end

private
  def set_food_rank
    @food = FoodRank.find(params[:id])
  end

  def food_rank_params
    params.require(:food_rank).permit(:food_rank_id, :food_id, :rank, :row_order_position)
  end
end

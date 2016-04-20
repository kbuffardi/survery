class FoodRanksController < ApplicationController
  before_filter :authenticate_user!

  def food_ranking
    @food_ranks = FoodRank.where(["user_id = ?", current_user.id])
  end

  def update_row_order
    @food_rank = FoodRank.find(food_rank_params[:food_rank_id])
    @food_rank.row_order_position = food_rank_params[:row_order_position]
    @food_rank.save

    render nothing: true
  end

  def update_rank
    @food_ranks = FoodRank.where(["user_id = ?", current_user.id])
    @previous = -8388608
  #  flash.alert = "Ranks: <br>"
    @food_ranks.each_with_index do |f_set, i|
      @minimum_order = 8388608
      @food_ranks.each_with_index do |f_check, j|
        if f_set.rank.nil? && f_check.rank.nil? && ( f_check.row_order < @minimum_order )
          @minimum_order = f_check.row_order
#          flash.alert << " set <br>"
        end
  #      flash.alert << "looping: j | #{f_set.rank.nil?} <br>"
      end
      @rank_this = FoodRank.where("user_id = #{current_user.id} AND row_order = #{@minimum_order}").first
      @rank_this.rank = i
      @rank_this.save
  #    flash.alert << " #{i}: #{@rank_this.row_order} <br>"
      @previous = @minimum_order
      @food_ranks = FoodRank.where(["user_id = ?", current_user.id])
    end
     redirect_to vas_questions_path(1)
  end

private
  def set_food_rank
    @food = @survey.find(params[:id])
  end

  def food_rank_params
    params.require(:food_rank).permit(:user_id, :food_rank_id, :row_order_position)
  end

  # def set_foods_params
  #   params.require(:survey).permit(:user_id, :food_id, :food_ids => [])
  # end
end

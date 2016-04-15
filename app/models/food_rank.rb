class FoodRank < ActiveRecord::Base
  include RankedModel
  ranks :row_order
  belongs_to :food
  belongs_to :food_rank
end

class AddRowOrderToFoodRanks < ActiveRecord::Migration
  def change
    add_column :food_ranks, :row_order, :integer
  end
end

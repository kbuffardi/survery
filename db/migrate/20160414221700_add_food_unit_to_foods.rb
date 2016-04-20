class AddFoodUnitToFoods < ActiveRecord::Migration
  def change
    remove_column :vas_questions, :food_unit, :string
    add_column :foods, :unit, :string
  end
end

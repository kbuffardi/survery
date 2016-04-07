class CreateFoodRanks < ActiveRecord::Migration
  def change
    create_table :food_ranks do |t|
    t.integer  :rank
    t.integer  :user_id
    t.integer  :food_id

      t.timestamps
    end
  end
end

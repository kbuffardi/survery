class CreateSurveyFoods < ActiveRecord::Migration
  def change
    create_table :survey_foods do |t|
      t.integer :survey_id
      t.integer :food_id

      t.timestamps
    end
  end
end

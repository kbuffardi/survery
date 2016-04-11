class CreateSurveyCategories < ActiveRecord::Migration
  def change
    create_table :survey_categories do |t|
      t.integer :survey_id
      t.integer :category_id

      t.timestamps
    end
  end
end

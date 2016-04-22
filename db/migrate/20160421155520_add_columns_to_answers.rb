class AddColumnsToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :user_ids, :string, array:true, default: []
    add_column :answers, :question_ids, :string, array:true, default: []
    add_column :answers, :survey_ids, :string, array:true, default: []
    add_column :answers, :vas_values, :string, array:true, default: []
    add_column :answers, :food_ids, :string, array:true, default: []
  end
end

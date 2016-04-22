class PostgresIHateYouChangingToAllText < ActiveRecord::Migration
  def change
    remove_column :answers, :user_ids, :string, array:true, default: []
    remove_column :answers, :question_ids, :string, array:true, default: []
    remove_column :answers, :survey_ids, :string, array:true, default: []
    remove_column :answers, :vas_values, :string, array:true, default: []
    remove_column :answers, :food_ids, :string, array:true, default: []
    add_column :answers, :user_ids, :text, array:true, default: []
    add_column :answers, :question_ids, :text, array:true, default: []
    add_column :answers, :survey_ids, :text, array:true, default: []
    add_column :answers, :vas_values, :text, array:true, default: []
    add_column :answers, :food_ids, :text, array:true, default: []
  end
end

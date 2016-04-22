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

    remove_column :demographics, :ethnicity, :string
    remove_column :demographics, :alcohol_consumption, :string
    remove_column :demographics, :weight_management_practices
    remove_column :demographics, :medical_conditions, :string
    remove_column :demographics, :weight_management_practices_other, :string, default: []
    remove_column :demographics, :medical_conditions_other, :string
    add_column :demographics, :ethnicity, :text, array:true, default: []
    add_column :demographics, :alcohol_consumption, :text, array:true, default: []
    add_column :demographics, :weight_management_practices, :text, array:true, default: []
    add_column :demographics, :medical_conditions, :text, array:true, default: []
    add_column :demographics, :weight_management_practices_other, :text, array:true, default: []
    add_column :demographics, :medical_conditions_other, :text, array:true, default: []
  end
end

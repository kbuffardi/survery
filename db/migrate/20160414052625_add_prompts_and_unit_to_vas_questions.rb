class AddPromptsAndUnitToVasQuestions < ActiveRecord::Migration
  def change
    remove_column :vas_questions, :prompt, :string
    remove_column :vas_questions, :value, :integer
    add_column :vas_questions, :prompt_left, :string
    add_column :vas_questions, :prompt_right, :string
    add_column :vas_questions, :food_unit, :string
  end
end

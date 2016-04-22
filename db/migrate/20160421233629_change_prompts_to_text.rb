class ChangePromptsToText < ActiveRecord::Migration
  def change
    remove_column :vas_questions, :prompt_left, :string
    remove_column :vas_questions, :prompt_right, :string
    add_column :vas_questions, :prompt_left, :text
    add_column :vas_questions, :prompt_right, :text
  end
end

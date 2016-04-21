class ChangeVasQuestionsForRelationship < ActiveRecord::Migration
  def change
    remove_column :vas_answers, :user_id, :integer
    remove_column :vas_answers, :vas_question_id, :integer
  end
end

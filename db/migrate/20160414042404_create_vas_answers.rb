class CreateVasAnswers < ActiveRecord::Migration
  def change
    create_table :vas_answers do |t|
      t.integer :value
      t.integer :user_id
      t.integer :vas_question_id
      t.timestamps
    end
  end
end

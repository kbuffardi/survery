class AddSurveyToVasAnswers < ActiveRecord::Migration
  def change
    add_column :vas_answers, :survey_id, :integer
  end
end

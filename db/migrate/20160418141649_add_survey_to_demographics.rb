class AddSurveyToDemographics < ActiveRecord::Migration
  def change
    add_column :demographics, :survey_id, :integer
  end
end

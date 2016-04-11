class SurveyCategory < ActiveRecord::Base
  belongs_to :survey
  belongs_to :category
end

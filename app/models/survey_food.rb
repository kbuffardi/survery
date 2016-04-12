class SurveyFood < ActiveRecord::Base
  belongs_to :survey
  belongs_to :food
end

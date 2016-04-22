class Answer < ActiveRecord::Base
  serialize :user_ids, Array
  serialize :question_ids, Array
  serialize :survey_ids, Array
  serialize :vas_values, Array
  serialize :food_ids, Array
end

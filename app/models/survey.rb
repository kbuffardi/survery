class Survey < ActiveRecord::Base
  belongs_to :user

  has_many :survey_categories
  has_many :categories, through: :survey_categories

  has_many :survey_foods
  has_many :foods, through: :survey_foods

  has_many :vas_answers
end

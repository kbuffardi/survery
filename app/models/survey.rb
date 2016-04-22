class Survey < ActiveRecord::Base
  belongs_to :user
  has_one :demographic

  has_many :survey_categories
  has_many :categories, through: :survey_categories

  has_many :survey_foods
  has_many :foods, through: :survey_foods

  has_many :vas_answers
  accepts_nested_attributes_for :vas_answers
end

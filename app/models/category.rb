class Category < ActiveRecord::Base
  has_many :foods, dependent: :destroy

  validates :name, presence: true

  has_many :survey_categories
  has_many :surveys, through: :survey_categories
end
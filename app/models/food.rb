class Food < ActiveRecord::Base
  belongs_to :category
  has_one :food_rank

  validates :name, :category_id, presence: true

  has_many :survey_foods
  has_many :surveys, through: :survey_foods
end

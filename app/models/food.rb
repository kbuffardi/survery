class Food < ActiveRecord::Base
  belongs_to :category
  has_one :food_rank

  validates :name, :category_id, presence: true
end

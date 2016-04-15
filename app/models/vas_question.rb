class VasQuestion < ActiveRecord::Base
  has_many :food
  has_many :vas_answers
  validates :order, presence: true
end

class VasQuestion < ActiveRecord::Base
  has_many :food
  validates :order, presence: true
end

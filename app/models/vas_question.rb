class VasQuestion < ActiveRecord::Base
  has_one :food

  validates :order, presence: true
end

class VasQuestion < ActiveRecord::Base
  belongs_to :user
  has_one :food
  
  validates :prompt, :order, presence: true
end

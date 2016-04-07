class Category < ActiveRecord::Base
  has_many :foods, dependent: :destroy

  validates :name, presence: true
end
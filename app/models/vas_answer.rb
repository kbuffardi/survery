class VasAnswer < ActiveRecord::Base
  has_one :vas_question
  belongs_to :survey
end

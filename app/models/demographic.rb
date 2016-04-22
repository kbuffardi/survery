class Demographic < ActiveRecord::Base
  serialize :weight_management_practices_other, Array
  serialize :weight_management_practices, Array
  serialize :medical_conditions, Array

  serialize :alcohol_consumption, Array
  serialize :ethnicity, Array
end

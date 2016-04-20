class CreateDemographics < ActiveRecord::Migration
  def change
    create_table :demographics do |t|
      t.boolean :eating_disorder
      t.integer :age
      t.string :gender
      t.string :ethnicity
      t.integer :height_in_inches
      t.integer :weight
      t.string :alcohol_consumption
      t.string :weight_management_practices
      t.string :medical_conditions
      t.boolean :raffle
    end
  end
end

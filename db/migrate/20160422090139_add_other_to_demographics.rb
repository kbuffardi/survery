class AddOtherToDemographics < ActiveRecord::Migration
  def change
    remove_column :demographics, :height_in_inches, :integer
    remove_column :demographics, :weight, :integer

    add_column :demographics, :weight_management_practices_other, :string, default: ""
    add_column :demographics, :medical_conditions_other, :string
    add_column :demographics, :ethnicity_other, :string
    add_column :demographics, :height, :string
    add_column :demographics, :weight, :string
  end
end

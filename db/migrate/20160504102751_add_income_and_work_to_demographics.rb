class AddIncomeAndWorkToDemographics < ActiveRecord::Migration
  def change
    add_column :demographics, :work, :integer
    add_column :demographics, :income, :integer
    remove_column :demographics, :height, :string
    add_column :demographics, :height_feet, :string
    add_column :demographics, :height_inches, :string
  end
end

class AddIncomeAndWorkToDemographics < ActiveRecord::Migration
  def change
    add_column :demographics, :work, :integer
    add_column :demographics, :income, :integer
    remove_column :demographics, :height, :string
    add_column :demographics, :height, :string, array:true
  end
end

class AddIncomeAndWorkToDemographics < ActiveRecord::Migration
  def change
    add_column :demographics, :work, :integer
    add_column :demographics, :income, :integer
  end
end

class AddAdminToUsers < ActiveRecord::Migration
  def change
    add_column :users, :admin_enabled, :boolean
  end
end

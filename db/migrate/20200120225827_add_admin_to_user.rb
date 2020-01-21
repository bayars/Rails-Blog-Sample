class AddAdminToUser < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :admin, :boolean, :default => true
  end
end

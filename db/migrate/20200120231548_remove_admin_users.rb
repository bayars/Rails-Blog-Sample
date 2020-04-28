# frozen_string_literal: true

# Admin User Model removed
class RemoveAdminUsers < ActiveRecord::Migration[6.0]
  def change
    drop_table :admin_users
  end
end

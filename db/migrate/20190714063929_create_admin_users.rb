class CreateAdminUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :admin_users do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.datetime :created_at
      t.datetime :updated_at
      t.string :username
      t.string :password_digest

      t.timestamps
    end
  end
end

class CreateUsers < ActiveRecord::Migration[5.2]
  def up
    create_table :users do |t|
      t.column "first name ", :string, :limit =>25
      t.string "last name ", :limit => 50
      t.string "email", :default => "",:null => false
      t.string "password", :limit => 40
      # t.datetime "created at "
      # t.datetime "update at"
      t.timestamps
    end
  end
  def down
    drop_table :users
  end
end

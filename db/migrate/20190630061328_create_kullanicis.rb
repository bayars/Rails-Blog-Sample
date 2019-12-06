class CreateKullanicis < ActiveRecord::Migration[5.2]
  def change
    create_table :kullanicis do |t|
      t.string :isim
      t.string :nickname
      t.string :email
      t.datetime :olusturulma
      t.datetime :songiris
      t.text :aciklama

      t.timestamps
    end
  end
end

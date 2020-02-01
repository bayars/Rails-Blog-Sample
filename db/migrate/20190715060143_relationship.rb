# frozen_string_literal: true

# Foreing key created
class Relationship < ActiveRecord::Migration[5.2]
  def change
    add_reference :admin_users, :yazilars, foreign_key: true
  end
end

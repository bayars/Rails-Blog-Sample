# frozen_string_literal: true

# The body area converted to Text area.
class BodyninTipiniTextAreaYap < ActiveRecord::Migration[5.2]
  def up
    change_column :yazilars, :body, :text
  end

  def down
    change_column :yazilars, :text, :body
  end
end

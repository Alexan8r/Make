# frozen_string_literal: true

class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.references :device, null: false, foreign_key: true
      t.float :value

      t.timestamps
    end
  end
end

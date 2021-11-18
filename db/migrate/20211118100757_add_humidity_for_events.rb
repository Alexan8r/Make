# frozen_string_literal: true

class AddHumidityForEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :humidity, :numeric
  end
end

# frozen_string_literal: true

class AddTemperatureForEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :temperature, :numeric
  end
end

# frozen_string_literal: true

json.array! @event do |e|
  json.id e.id
  json.device_id e.device_id
  json.value e.value
  json.created_at e.created_at
  json.updated_at e.updated_at
  json.temperature e.temperature
  json.humidity e.humidity
  end

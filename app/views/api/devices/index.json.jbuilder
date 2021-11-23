# frozen_string_literal: true

json.array! @device do |d|
  json.id d.id
  json.serial d.serial
  json.created_at d.created_at
  json.updated_at d.updated_at
end

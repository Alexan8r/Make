# frozen_string_literal: true

json.extract! device, :id, :serial, :created_at, :updated_at
json.url device_url(device, format: :json)

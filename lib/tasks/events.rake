# frozen_string_literal: true

namespace :events do
  task event: :environment do
    50.times do
      @event = Event.new
      @event.device_id = Device.ids.sample
      @event.value = rand(10_000..99_999)
      @event.temperature = rand(0..50)
      @event.humidity = rand(20..100)
      @event.created_at = DateTime.now - (rand * 2)
      @event.save
    end
  end
end

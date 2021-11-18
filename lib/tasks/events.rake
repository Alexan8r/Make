# frozen_string_literal: true

namespace :events do
  task event: :environment do
    300.times do
      @event = Event.new
      @event.device_id = Device.ids.sample
      @event.value = rand(max = 1000)
      @event.temperature = rand(0..50)
      @event.humidity = rand(20..100)
      @event.created_at = DateTime.now - (rand * 21)
      @event.save
    end
  end
end

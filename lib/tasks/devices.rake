# frozen_string_literal: true

namespace :device do
  task create_device: :environment do
    10.times do
      @device = Device.new
      @device.serial = rand(max = 10_000)
      @device.save
    end
  end
end

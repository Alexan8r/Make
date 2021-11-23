# frozen_string_literal: true

module Api
  class DevicesController < ApplicationController
    before_action :set_device, only: %i[show]

    def index
      @devices = Device.all
    end

    def show; end

    private

    def set_device
      @device = Device.find(params[:id])
    end

    def device_params
      params.require(:device).permit(:serial, :id)
    end
  end
end

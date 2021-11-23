# frozen_string_literal: true

module Api
  class EventsController < ApplicationController
    before_action :set_event, only: %i[show]

    # GET /events or /events.json
    def index
      @events = Event.all
    end

    # GET /events/1 or /events/1.json
    def show
      @event = Event.find(params[:id])
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def event_params
      params.require(:event).permit(:device_id, :value, :temperature, :humidity)
    end
  end
end

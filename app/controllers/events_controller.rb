class EventsController < ApplicationController
  def index
    params[:query].present? ? @events = Event.where(name: params[:query]) : @events = Event.all

    @markers = @events.geocoded.map do |event|
      {
        lat: event.latitude,
        lng: event.longitude
      }
    end
  end

  def show
    @event = Event.find(params[:id])
  end

#   private

# event_params = params.require(:event).permit(:id)

end

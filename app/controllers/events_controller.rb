class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

#   private

# event_params = params.require(:event).permit(:id)

end

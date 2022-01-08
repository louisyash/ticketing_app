class EventsController < ApplicationController
  def index
     if params[:query].present?
      @events = Event.where(name: params[:query])
    else
      @events = Event.all
    end
  end

  def show
    @event = Event.find(params[:id])
  end

#   private

# event_params = params.require(:event).permit(:id)

end

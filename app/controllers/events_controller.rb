class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @event.update(event_params)
    redirect_to @event
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.create(event_params)
    redirect_to @event
  end

  private 
  def event_params
    params.require(:event).permit(:name, :description, :location, :price, :event_start_date, :event_end_date)
  end
end

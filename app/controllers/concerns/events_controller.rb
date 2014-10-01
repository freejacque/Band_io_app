class EventsController < ApplicationController

  def index
    @events = Event.where("date = ?", params[:date])
    @band = @events.map do |event|
      Band.find(event.band_id)
    end
    @venue = @events.map do |event|
      Venue.find(event.venue_id)
    end
  end

end


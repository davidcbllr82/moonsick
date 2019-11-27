class AttendeesController < ApplicationController
  def index
    @attendees = Attendee.all
  end

  def show
    @attendee = Attendee.find(params[:id])
  end

  def create
    @attendee = Attendee.new
    @attendee.user = current_user
    @attendee.event = Event.find(params[:event_id])
    @attendee.save
    redirect_to event_path(Event.find(params[:event_id]))
  end
end

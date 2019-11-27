class EventsController < ApplicationController
  before_action :find_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = policy_scope(Event)
  end

  def show
    # create a new attendee and display it
    @attendee = Attendee.new
    @attendees = Attendee.all

    # create a new moment and display all
    @moment = Moment.new
    @moments = Moment.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    if @event.save
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @event.update(event_params)
    redirect_to event_path(@event)
  end

  def destroy
    @event.destroy
    redirect_to root_path
  end

  private

  def event_params
    params.require(:event).permit(:title, :description)
  end

  def find_event
    @event = Event.find(params[:id])
    authorize @event
  end
end

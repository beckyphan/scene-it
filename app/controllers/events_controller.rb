class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def create
    @event = Event.create(event_params)
    @movie = Movie.find_by_id(@event.movie_id)
    redirect_to movie_path(@movie)
  end

  def show
    @event = Event.find_by_id(params[:id])
    @movie = Movie.find_by_id(@event.movie_id)
    @host = User.find_by_id(@event.host_id)
    @attendees = @event.attendees
    @comments = Comment.where(event_id: params[:id])

  end

  def edit
    @event = Event.find_by_id(params[:id])
    @movie = Movie.find_by_id(@event.movie_id)
    @host = User.find_by_id(@event.host_id)
  end

  def destroy
    @event = Event.find_by_id(params[:id])
    @movie = Movie.find_by_id(@event.movie_id)
    @event.destroy

    redirect_to movie_path(@movie)
  end

  private

  def event_params
    params.require(:event).permit(:title, :datetime, :location, :movie_id, :host_id)
  end

end

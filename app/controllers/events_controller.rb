class EventsController < ApplicationController

  def show
    @event = Event.find_by_id(params[:id])
    @movie = Movie.find_by_id(@event.movie_id)
    @host = User.find_by_id(@event.host_id)
    @attendees = @event.attendees
    @comments = Comment.where(event_id: params[:id])

  end

end

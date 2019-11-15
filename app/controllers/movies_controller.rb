class MoviesController < ApplicationController

  def index
    @movies = Movie.all
    @movie = Movie.new
  end

end

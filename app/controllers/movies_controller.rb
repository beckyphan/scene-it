class MoviesController < ApplicationController

  def index
    @movies = Movie.all
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      redirect_to movies_path
    else
      render "index"
    end
  end

  private

  def movie_params
    params.require(:movie).permit(:name, :year, :category, :image_url)
  end
end

class RatingsController < ApplicationController

  def create
    @rating = Rating.create(rating_params(:user_id, :movie_id, :recommend))
    @movie = Movie.find_by_id(@rating.movie_id)
    redirect_to movie_path(@movie)
  end

  def update
    @rating = Rating.find_by(rating_params(:user_id, :movie_id))
    @rating.update(rating_params(:recommend))
    @movie = Movie.find_by_id(@rating.movie_id)
    redirect_to movie_path(@movie)
  end

  private

  def rating_params(*args)
    params.require(:rating).permit(*args)
  end

end

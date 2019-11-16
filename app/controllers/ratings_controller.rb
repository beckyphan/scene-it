class RatingsController < ApplicationController
  def update
    @rating = Rating.find_by(rating_id_params)
    @rating.update(rating_recommend_params)
    @movie = Movie.find_by_id(@rating.movie_id)
    redirect_to movie_path(@movie)
  end

  private
  def rating_id_params
    params.require(:rating).permit(:user_id, :movie_id)
  end

  def rating_recommend_params
    params.require(:rating).permit(:recommend)
  end
end

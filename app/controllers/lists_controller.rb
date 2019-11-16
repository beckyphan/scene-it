class ListsController < ApplicationController

  def update
    @list = List.find_by(list_id_params)
    @list.watched = list_watched_params
    @movie = Movie.find_by_id(@list.movie_id)
    redirect_to movie_path(@movie)
  end

  private
  def list_id_params
    params.require(:list).permit(:user_id, :movie_id)
  end

  def list_watched_params
    params.require(:list).permit(:watched)
  end
end

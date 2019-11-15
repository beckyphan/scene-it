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
      @movies = Movie.all
      render "index"
    end
  end

  def show
    @movie = Movie.find_by_id(params[:id])

    if @movie.ratings.size > 0
      @rating = @movie.average(:rating)
    else
      @rating = 0
    end

    # @list = current_user.build_list(movie_id: @movie.id, watched: 0)
  end

  private

  def movie_params
    params.require(:movie).permit(:name, :year, :category, :image_url)
  end
end

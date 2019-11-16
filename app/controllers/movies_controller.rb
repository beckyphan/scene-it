class MoviesController < ApplicationController
  before_action :require_login, only: [:create, :show, :edit]

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
      @avg_rating = @movie.average(:rating)
    else
      @avg_rating = 0
    end

    @list = List.new

    @seen = false

    if current_user.lists.include?(movie_id: @movie.id)
      @seen = true
      binding.pry
      @rating = Rating.where("user_id = ? AND movie_id = ?", current_user.id, params[:id])
      if @user_rating.recommend
        @user_rated = "user_recommended"
      else
        @user_rated = "do_not_watch"
      end
    else
      @rating = Rating.new
    end

  end

  private

  def movie_params
    params.require(:movie).permit(:name, :year, :category, :image_url)
  end
end

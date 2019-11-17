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
    @event = Event.new

    if @movie.ratings.size > 0
      @avg_rating = @movie.ratings.where(recommend: true).size - @movie.ratings.where(recommend: false).size
    else
      @avg_rating = 0
    end

    @list = List.where("user_id = ? AND movie_id = ?", current_user.id, params[:id]).first

    if @list.nil?
      @list = List.create(user_id: current_user.id, movie_id: params[:id], watched: false)
    end

    @seen = @list.watched

    if @list.watched
      @rating = Rating.where("user_id = ? AND movie_id = ?", current_user.id, params[:id]).first

      if @rating.nil?
        @rating = Rating.new
        @thumbs_up = "dim"
        @thumbs_down = "dim"
      elsif @rating.recommend
        @thumbs_up = "highlight"
        @thumbs_down = "dim"
      else
        @thumbs_up = "dim"
        @thumbs_down = "highlight"
      end
    end

  end

  private

  def movie_params
    params.require(:movie).permit(:name, :year, :category, :image_url)
  end
end

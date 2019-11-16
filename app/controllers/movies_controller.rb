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
      @avg_rating = @movie.ratings.where(recommend: true).size - @movie.ratings.where(recommend: false).size
    else
      @avg_rating = 0
    end

    @list = List.where("user_id = ? AND movie_id = ?", current_user.id, params[:id]).first

    if !@list.nil?
    else
      @list = List.new
    end

    if current_user.lists.include?(@list)
      @seen = true

      @rating = Rating.where("user_id = ? AND movie_id = ?", current_user.id, params[:id]).first

      if @rating.recommend
        @user_rated = "highlight"
      else
        @user_rated = "dim"
      end

    else
      @seen = false
      @rating = Rating.new
    end

  end

  private

  def movie_params
    params.require(:movie).permit(:name, :year, :category, :image_url)
  end
end

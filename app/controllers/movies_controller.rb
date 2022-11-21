class MoviesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @movies = Movie.all
    # @list = List.find(params[:list_id])
  end

  def show
    @movie = Movie.find(params[:id])
  end
end

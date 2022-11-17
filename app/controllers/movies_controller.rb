class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    @list = List.find(params[:list_id])
  end

  def show
    @movie = Movie.find(params[:id])
  end
end

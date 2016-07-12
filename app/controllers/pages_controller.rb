class PagesController < ApplicationController
  def index
    @categories = Category.order(:created_at)
  end

  def recommend
    @movie = Movie.find(params[:movie_id])
    @movie.recommended = not(@movie.recommended)
    @movie.save
    redirect_to pages_index_path
  end
end

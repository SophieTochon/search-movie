class HomeController < ApplicationController

  def search
  	@research_terms = params[:research_terms]
  	@results = SearchMovie.new(@research_terms).perform
  end
end

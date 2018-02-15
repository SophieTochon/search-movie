class SearchMovie
	attr_accessor :research_terms, :client, :search

  def initialize(research_terms)
  	@research_terms = research_terms
  end

  def perform
  	log_in_to_the_movie_database
  	make_research
  end

  def log_in_to_the_movie_database
  	@client = Tmdb::Api.key(ENV['THE_MOVIE_DATABASE_API_KEY'])
  end

  def make_research
  	@search = Tmdb::Search.new
	  @search.resource('movie')
	  @search.query(@research_terms)
	  @search.fetch
  end
end
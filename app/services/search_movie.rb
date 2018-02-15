class SearchMovie
	attr_accessor :research_terms, :search, :client

  def initialize(research_terms)
  	@research_terms = research_terms
  end

  def perform
  	log_in_to_the_movie_database
  	make_research
  end

  def log_in_to_the_movie_database
  	@client = Tmdb::Api.key("f954ddd1202b26325375d3ff28525f39")
  end

  def make_research
  	@search = Tmdb::Search.new
	  @search.resource('movie')
	  @search.query(@research_terms)
	  @search.fetch
  end
end
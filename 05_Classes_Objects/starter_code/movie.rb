class Movie

  def initialize title = "Dr. Strangelove", release_date = 1960
    @release_date = release_date
    @title = title
  end

  def print_info
    puts "my favorite film is #{@title} releaseed in #{@release_date}"
  end

  def title= title
    @title = title
  end

  def title
    @title
  end

  def new?
    @release_date > 2000
  end

end

my_movie = Movie.new()
my_movie.print_info
puts my_movie.new?







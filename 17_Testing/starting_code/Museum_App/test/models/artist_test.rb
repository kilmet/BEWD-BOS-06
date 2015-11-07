require 'test_helper'

class ArtistTest < ActiveSupport::TestCase
  def test_artist_needs_a_name
    artist = Artist.new
    assert_equal artist.save, false
  end

  def test_first_name
    assert_equal artists(:picasso).first_name, "Pablo"
  end
end

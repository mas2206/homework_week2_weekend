require("minitest/autorun")
require("minitest/rg")
require_relative("../songs.rb")

class SongTest < MiniTest::Test

  def setup
    @song_1 = Song.new("Humming song", "*hums*")
    @song_2 = Song.new("Whistle song", "*whistles*")
  end

  def test_humming_song_exists
    assert_equal("Humming song", @song_1.song_name)
  end

  def test_whistle_song_has_lyrics
    assert_equal("*whistles*", @song_2.lyrics)
  end

end
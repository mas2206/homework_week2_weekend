require("minitest/autorun")
require("minitest/rg")
require_relative("../rooms.rb")
require_relative("../songs.rb")
require_relative("../guests.rb")

class RoomTest < MiniTest::Test

  def setup
    @song_1 = Song.new("Humming song", "*hums*")
    @song_2 = Song.new("Whistle song", "*whistles*")
    @song_3 = Song.new("Yodeling song", "*yodels*")
    @guest_1 = Guest.new("Zsolt")
    @guest_2 = Guest.new("Sandy")
    @room_1 = Room.new(1)
    @room_2 = Room.new(2)
  end

  def test_room_1_exists
    assert_equal(1, @room_1.room_number)
  end

  def test_room_2_exists
    assert_equal(2, @room_2.room_number)
  end

  def test_check_in
    @room_1.check_in(@guest_1)
    assert_equal(1, @room_1.guests.count)
  end

  def test_check_out
    @room_1.check_in(@guest_1)
    @room_1.check_in(@guest_2)
    @room_1.check_out(@guest_1)
    assert_equal(1, @room_1.guests.count)
  end

  def test_add_songs_to_room
    @room_1.add_song(@song_1)
    assert_equal(1, @room_1.songs.count)
  end

end
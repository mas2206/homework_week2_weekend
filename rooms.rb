class Room

  attr_reader :room_number, :songs, :guests

  def initialize(room_number)
    @room_number = room_number
    @songs = []
    @guests = []
  end

  def check_in(guest)
    @guests << guest
  end

  def check_out(guest)
    @guests.delete(guest)
  end

  def add_song(song)
    @songs << song
  end

end
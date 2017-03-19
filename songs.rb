class Song

  attr_reader :song_name, :lyrics

  def initialize(song_name, lyrics)
    @song_name = song_name
    @lyrics = lyrics
  end

end
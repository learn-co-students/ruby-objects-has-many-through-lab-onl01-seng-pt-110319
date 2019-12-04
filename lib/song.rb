class Song
  attr_reader :song_title, :artist, :genre
  @@all = []

  def initialize(song_title, artist, genre)
    @song_title = song_title
    @artist = artist
    @genre = genre
    @@all << self
  end

  def self.all
    @@all
  end
end

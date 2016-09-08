class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    artist_name = filename.split(" - ")[0]
    song_name = filename.split(" - ")[1]
    new_song_name = self.new(song_name)

    new_song_name.artist = Artist.find_or_create_by_name(artist_name)
    new_song_name.artist.songs << new_song_name
    new_song_name
  end

  def artist_name=(name)
    self.artist = Artist.new(name)
  end
end

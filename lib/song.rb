class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    artist_name = filename.split(" - ")[0]
    song_name = filename.split(" - ")[1]
    new_filename = self.new(song_name)

    new_filename.artist = Artist.find_or_create_by_name(artist_name)
    new_filename.artist.add_song(new_filename)
    new_filename
  end

  def artist_name=(name)
    self.artist = Artist.new(name)
  end
end

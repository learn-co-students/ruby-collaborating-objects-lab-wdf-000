#responsible for creating songs given each filename
#sending the artist's name (a string) to the Artist class

class Song 
attr_accessor :name, :artist, :title

  def initialize(name)
    @name = name
  end

  def song=(artist_name)
    artist_name.song = self
  end

  def self.new_by_filename(filename)
    artist_name = Artist.find_or_create_by_name(filename.split(" - ")[0])
    song_name = self.new(filename.split(" - ")[1])

    song_name.artist = artist_name
    artist_name.add_song(song_name)

    song_name
  end
end
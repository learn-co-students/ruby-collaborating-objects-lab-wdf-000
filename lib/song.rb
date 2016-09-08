require "pry"

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    song_name = filename.split(" - ")[1]
    song_artist = filename.split(" - ")[0]
    song = Song.new(song_name)
    song.artist = Artist.find_or_create_by_name(song_artist)
    # get the artist's songs list and add newly created song to it
    song.artist.songs << song
    song
    # binding.pry
  end
end

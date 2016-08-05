require 'pry'

class Song
  attr_accessor :name, :artist

  def initialize(name)
    self.name = name
  end

  def self.new_by_filename(filename)
      new_song = Song.new(filename.partition("-")[2].partition("-")[0].strip)
      new_artist = Artist.find_or_create_by_name(filename.partition("-")[0].strip)

      new_song.artist = new_artist
      new_artist.add_song(new_song)

      new_song

    end
end

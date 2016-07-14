require 'pry'
class Song
  attr_accessor :name, :artist

  def initialize(song_name)
    @name = song_name
  end

  def self.new_by_filename(filename)
   data = filename.split(/\s\-\s/)
    song = Song.new(data[1])
    song.artist = artist_name(data[0])
    song.artist.add_song(data[1])
    #binding.pry
    song
  end

  def self.artist_name(artist_name)
    Artist.find_or_create_by_name(artist_name)
  end


end

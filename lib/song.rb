  # require "pry"

class Song

  attr_accessor :name, :artist

 	def initialize(name)
 		   @name = name
  end

  def self.new_by_filename(filename)

    artist, song = filename.split(" - ")
    created_song = self.new(song)
    created_song.artist_name = artist
    # artist_name = created_song[0]
    # song_name = created_song[1]

    
    # artist = Artist.find_or_create_by_name(artist_name)
    # artist.add_song(song)
    created_song


    # Split the file name into parts
    # song = filename.split("-")[1]
    # use the first part to create an artist object

    # artist_name = Artist.new(song[0].strip)
    # use the second part to create a Song Object
    # created_song = Song.new(filename.split("-")[1])
    # # connect the song and the artist using Song#artist=
    # created_song.artist = Artist.find_or_create_by_name(filename.split("-")[0]) 
    # return the song
    # created_song
  end

  def artist_name=(name)
      self.artist = Artist.find_or_create_by_name(name)
      artist.add_song(self)
  end
end
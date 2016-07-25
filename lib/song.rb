require 'pry'
class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    parsed = filename.split(" - ")
    name_song = parsed[1]
    artist_song = parsed[0]

    new_song_obj = self.new(name_song)

    #Need to create an artist object by calling #artist_name
    #This method will call find_or_create_by_name
    
    new_song_obj.artist_name = artist_song

    #Set the artist accessor = to the artist object
   
    new_song_obj
  end

  def artist_name=(name_of_artist)
    artist_obj = Artist.find_or_create_by_name(name_of_artist)
    artist_obj.add_song(self)
    self.artist = artist_obj
    artist_obj
  end

  


end
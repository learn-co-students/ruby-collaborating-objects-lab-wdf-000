class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    # data
    file_data = filename.split(" - ")
    artist_name = file_data[0]
    song_name = file_data[1]

    # set up setup song
    song = Song.new(song_name)
    artist = Artist.find_or_create_by_name(artist_name)
    song.artist = artist
    artist.add_song(song)
    
    # return song
    song
  end
end
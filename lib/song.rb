class Song
  attr_accessor :name, :artist 

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    arr = filename.split(/-|\.mp3/)
    song = self.new(arr[1].strip)
    song.artist = Artist.find_or_create_by_name(arr[0].strip)
    song.artist.add_song(song)
    song
  end
end

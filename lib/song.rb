class Song

  attr_accessor :name,
                :artist   # Artist object

  def initialize(name)
    @name = name
    @artist = nil
  end

  def self.new_by_filename(filename) #filename = Thundercat - For Love I Come - dance.mp3

    song_arr = filename.split(" - ")

    song = self.new(song_arr[1])
    song.artist = Artist.find_or_create_by_name(song_arr[0])
    return song
  end
end

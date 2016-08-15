class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    # title = file_name.scan(/\b+\w+\s+\w+\b+ -/)
    # title = file_name.scan(/\b+\w+\b |-/)
    # artist = title[0].gsub("-","").strip
    # song = title[1].gsub("-","").strip
    #
    title = file_name.split(" - ")
    artist = title[0].strip
    song = title[1].strip

    # new_song = self.new(song)
    new_song = self.new(song)
    new_song.artist_name = artist
    new_song

  end
  #
  def artist_name=(name)
    #association to artist class
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

end

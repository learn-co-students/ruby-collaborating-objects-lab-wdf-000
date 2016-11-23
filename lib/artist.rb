class Artist
  attr_accessor :name, :songs
  @@all = []
  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @songs = []

    # keep record
    save
  end

  def add_song(song)
    @songs << song
  end

  def save
    self.class.all << self
  end

  def self.find_or_create_by_name(artist_name)
    found_artist = self.all.detect {|artist| artist.name == artist_name}
    found_artist ? found_artist : Artist.new(artist_name)
  end

  def print_songs
    puts @songs.map(&:name)
  end
end
class Artist

  attr_accessor :name
  attr_reader :songs

  @@all = []   # Array of Artist object

  def initialize(name)
    @name = name
    @songs = []
  end

  # def self.all=(artists)  # Array of Artist object
  #   @@all = artists
  # end

  def self.all
    @@all.dup.freeze
  end

  def self.add_artist(artist)
    @@all << artist
  end

  def add_song(song)   # Song object
    self.songs << song
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    artist = @@all.detect {|artist| artist.name == name}
    return artist if artist

    artist = self.new(name)
    return artist
  end

  def print_songs
    self.songs.each { |song| puts song.name }
  end
end

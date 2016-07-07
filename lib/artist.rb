class Artist
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
  end
  def add_song(song)
    song.artist = self
    @songs << song
    @@all << self
  end
  def songs
    @songs
  end
  def self.all 
    @@all.uniq
  end
  def save
    @@all << self
  end
  def self.find_or_create_by_name(name)
    @@all.detect {|artist| artist.name == name} || self.new(name)
  end
  def print_songs
    @songs.each {|song| puts song.name}
  end
end

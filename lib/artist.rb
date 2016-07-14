class Artist
  attr_accessor :name

  @@all = []
  def initialize(artist_name)
    @name = artist_name
    @songs = []
  end

  def add_song(song_name)
    song = Song.new(song_name)
    @songs << song_name
    song = song.name

  end

  def self.find_by_name(artist_name)
    @@all.find{|artist| artist.name == artist_name}
  end

  def self.create_by_name(artist_name)
    artist = self.new(artist_name)
    @@all << artist
    artist
  end

  def self.find_or_create_by_name(artist_name)
  #  binding.pry
    self.find_by_name(artist_name).nil? ? self.create_by_name(artist_name) : self.find_by_name(artist_name)
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end
end

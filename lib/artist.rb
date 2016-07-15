class Artist
  attr_accessor :name

  @@all = []
  def initialize(artist_name)
    @name = artist_name
    @songs = []
    save
  end

  def add_song(song)
    @songs << song
  end

  def self.find_by_name(artist_name)
    Artist.all.find{|artist| artist.name == artist_name}
  end

  def self.create_by_name(artist_name)
    artist = Artist.new(artist_name)
  end

  def self.find_or_create_by_name(artist_name)
    find_by_name(artist_name).nil? ? create_by_name(artist_name) : find_by_name(artist_name)
  end

  def songs
    @songs
  end

  def self.all
    @@all
  end

  def save
    Artist.all << self
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end
end

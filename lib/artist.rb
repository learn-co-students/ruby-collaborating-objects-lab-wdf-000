require 'pry'

class Artist
  attr_accessor :name, :songs, :artist

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def add_song(song)
    songs << song
  end

  def save
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    all.find { |artist| artist.name == name } || artist = Artist.new(name)
  end

  def print_songs
    songs.each { |song| puts song.name }
  end

end
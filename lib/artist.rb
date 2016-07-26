require 'pry'

class Artist

  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def save
    @@all << self
  end

  def self.create(artist_name)
    artist = self.new(artist_name)
    # artist.name = artist_name
    artist.save
    artist
  end

  def self.find_by_name(artist_name)
    self.all.detect{|a| a.name == artist_name}
  end

  def self.find_or_create_by_name(artist_name)
    self.find_by_name(artist_name) || self.create(artist_name)
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end


end
require 'pry'
class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song

  end

  def save
    @@all << self
    #binding.pry
  end

  def songs
    @songs
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)

    if artist = @@all.detect do |artist_name|
        artist_name.name == name
      end
      artist

    else
      artist = self.new(name)
      artist.save
    end
    artist 
  end

  def print_songs
   self.songs.each do |songs|
    puts "#{songs.name}"
   end
  end

end


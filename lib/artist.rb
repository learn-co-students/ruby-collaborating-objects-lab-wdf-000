require 'pry'
class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  # def songs
  #   @songs
  # end -> can be replaced by the attr_accessor

  def save
    @@all << self
    self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    @@all.find { |artist_instance| artist_instance.name == name } || Artist.new(name).save
  end

  # have to save it for it to work & make sure that the save method returns the instance
  #

  #def artist = self.all.find { |instance| instance.name == name }
  # if artist
  #   artist
  #else
  # artist.new(name).save
  #end


  def print_songs
    @songs.each do |song|

      puts song.name
      # binding.pry
    end
  end

end

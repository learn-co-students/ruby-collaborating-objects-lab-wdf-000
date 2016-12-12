require 'pry'
class Artist

  attr_accessor :name 

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def add_song(song)
    @songs << song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  # def self.find(name)
  #   self.all.find{ |artist| artist.name = name }
  # end



  def self.find_or_create_by_name(name)
    if @@all.find { |artist| artist.name == name}
      @@all.find { |artist| artist.name == name}
    else
      new_artist = Artist.new(name)
      @@all << new_artist
      new_artist
      end
  end


  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end

end 



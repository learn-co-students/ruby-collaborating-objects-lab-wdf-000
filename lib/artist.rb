require 'pry'
class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
      @name = name
      @songs = []

  end


  def add_song(song)
   self.songs << song

  end

  def self.all
    @@all
  end

  def save
    @@all << self
    self
  end

  # def self.find_or_create_by_name(name)
  #   if self.all.each {|nam| return false if nam.name == name }
  #     artist = Artist.new(name)
  #
  #   else
  #     self.all.select{|x| x.name == name}
  #   end
  #
  # end

  def self.find_or_create_by_name(name)
    artist = self.all.find {|artist| artist.name == name}
    if artist
      artist
    else
       Artist.new(name).save
    end
  end




  def print_songs
     self.songs.each do |song|
       puts song.name
     end
  end



end

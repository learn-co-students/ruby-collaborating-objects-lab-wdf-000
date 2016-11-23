require 'pry'
class Song
  attr_accessor :title, :name, :artist

  @@all = []

  def self.all
    @@all
  end

  def initialize(title)
    @name = title
    @@all << self
  end

  def self.new_by_filename(filename)
     song = Song.new(filename.split(" - ")[1])
    # song = Song.new(filename)

     artist = Artist.find_or_create_by_name(filename.split(" - ")[0])

     song.artist = artist
     artist.songs <<  song

    #  binding.pry



    #  song.artist = filename.split(" - ")[0]
     song
  end

end

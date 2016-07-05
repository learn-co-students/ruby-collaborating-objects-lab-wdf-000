require "pry"

class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    # create a song list for every artist instance
    @songs = []
    # @@all << self
  end

  def add_song(song_object)
    self.songs << song_object
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    artist = self.all.detect { |artist_object| artist_object.name == name }

    if artist
      artist
    else
      new_artist = self.new(name)
      new_artist.save
      new_artist
    end
  end

  def print_songs
    self.songs.each { |song| puts song.name }
  end

end

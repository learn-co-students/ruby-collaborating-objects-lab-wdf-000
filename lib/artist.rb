class Artist
  attr_accessor :name, :song, :artist
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def save 
    self.class.all << self
    self
  end

  def add_song(song)
    song = Song.new(song)
    song = song.name
    @songs << song
  end

  def songs
    @songs
  end

  def self.find_or_create_by_name(name)
    @@all.find { |artist_x| artist_x.name == name} || self.new(name).save
  end

  def print_songs
    @songs.each do |x|
      puts x.name
    end
  end


end
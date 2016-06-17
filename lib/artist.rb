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

  def self.find_or_create_by_name(artist_name)
    found = @@all.detect{|artist| artist.name  == artist_name}

    if found
      found
    else
      artist = self.new(artist_name)
      artist.save
      artist
    end
  end

  def print_songs
    @songs.each{|x| puts x.name}
  end
end

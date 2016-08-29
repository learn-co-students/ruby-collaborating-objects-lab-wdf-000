class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []

  end

  def add_song(song)
    self.songs << song
  end

  def songs
    @songs
  end

  def save
    @@all << self
    # if you get a bug delete the next line of code
    self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)

    # artist = self.all.find do |artist|
    #   artist.name == name
    # end
    #
    # if !artist
    #   Artist .new(name)
    # end

    all.find{|artist| artist.name == name} || Artist.new(name).save
  end

  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end
end

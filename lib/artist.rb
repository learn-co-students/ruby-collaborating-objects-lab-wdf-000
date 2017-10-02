class Artist

  attr_accessor :name

  @@all = []


  def initialize(name)
    @name = name
    @@songs = []
  end



  def songs
    @@songs
  end

  def self.all
    @@all
  end

  def save
    @@all << self 
  end

    def add_song(song)
    @@songs << song
  end

  def self.find_or_create_by_name(name)
     found =  @@all.detect { |x| x.name == name }
     return found if found
      artist = self.new(name)
      artist.save
    return artist
  end

  def print_songs
    self.songs.each {|e| puts e.name }
  end


end

class Artist

  @@all = []
  attr_accessor :name, :songs

def initialize(name)
  @name = name
  @songs = []
end

def self.all
  @@all
end

def save
  @@all << self
end

def add_song(song)
  self.songs << song
end


def self.find_or_create_by_name(the_name)
  artist = self.all.detect {|a| a.name == the_name}
  if artist
     artist
  else
    artist = self.new(the_name)
    artist.save
    artist
  end
end


def print_songs
  songs.each{|s| puts s.name}
  
end
end
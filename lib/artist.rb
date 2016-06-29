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
  song.artist = self
  self.songs << song
end

def save
  self.class.all.include?(self) || self.class.all << self
end

def self.find_or_create_by_name(name)
  self.all.detect{|artist| artist.name == name} || Artist.new(name)
end

def print_songs
  self.songs.each {|song| puts song.name}
end

def self.all
  @@all
end

end

require 'pry'

class Artist
  attr_accessor :name, :songs
  @@all = []

  def initialize(name)
    self.name = name
    self.songs = []
  end

  def add_song(new_song)
    if !self.songs.include?(new_song)
      self.songs << new_song
      if !@@all.include?(self)
      save
    end
  end
end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

    def self.find_or_create_by_name(name)
    all.find { |artist| artist.name == name } || Artist.new(name)
  end

  def print_songs
      self.songs.each {|song| puts song.name}
  end

end

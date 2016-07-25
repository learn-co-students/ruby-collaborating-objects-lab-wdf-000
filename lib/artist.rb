require 'pry'
class Artist

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @song = [] #holds song objects
  end

  def add_song(song)
    @song << song
  end

  def songs
    @song
  end

  #saving each individual Artist instance 
  #into class variable @@all
  def save
    @@all << self
  end

  #self.all has class scope in order to access ALL
  #Artist instances 
  def self.all 
    @@all
  end

  def self.find_or_create_by_name(artist_name)
    obj = @@all.detect do |object|
      object.name == artist_name
    end
    if(obj == nil)
      new_artist_obj = Artist.new(artist_name)
      @@all << new_artist_obj
      new_artist_obj
    else
      obj 
    end
  end

  def print_songs
    songs.each do |object|
      puts object.name 
    end
  end

end
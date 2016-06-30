require 'pry'
class Artist
	attr_accessor :name
	@@all = []

	def initialize(name)
		@name = name
		@songs = []
		save
	end

	def add_song(song)
		@songs << song
	end

	def songs
		@songs
	end

	def save
		self.class.all << self
	end

	def self.all
		@@all
	end

	def self.find_or_create_by_name(artist_name)
		self.all.find {|artist| artist.name == artist_name} || artist = Artist.new(artist_name)
  end

	def print_songs
		songs.each do |song|
			puts song.name
		end
	end


end


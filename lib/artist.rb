require 'pry'
class Artist
	@@all = []
	attr_accessor :name

	def initialize(name)
		self.name = name
		@songs = []
		save
	end

	def songs
		@songs
	end

	def add_song(song)
		songs << song
	end

	def save
		@@all << self
	end

	def self.all
		@@all
	end

	def self.find_or_create_by_name(artist_name)
		all.find {|artist| artist.name == artist_name} || self.new(artist_name)
	end

	def print_songs
		songs.each {|song| puts song.name}
	end
end


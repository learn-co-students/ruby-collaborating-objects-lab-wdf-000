require 'pry'

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
		self.songs << song #self is the implicate receiver of this method
	end

	def save 
		@@all << self
		self
	end

	def self.all
		@@all
	end

	def self.find_or_create_by_name(name)
		# @@all.detect {|artist| artist.name == name } || self.new(name).save

		if artist_name = all.detect {|artist| artist.name == name } 
			artist_name
		else
			self.new(name).save
		end
	end

	def print_songs
		self.songs.each do |song|
			puts song.name
		end
	end


end
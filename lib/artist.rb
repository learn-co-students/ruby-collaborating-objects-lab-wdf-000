require 'pry'

class Artist
	attr_accessor :name, :songs

	@@all = []

	def initialize(name)
		@name = name
		@songs = []
		self.save
	end

	def add_song(song)
		self.songs << song
	end

	def save
		@@all << self
	end

	def self.all
		@@all
	end

	def self.find_or_create_by_name(name)
		# new_artist = ""
		# self.all.each do |artist|
		# 	if artist.name == name
		# 		new_artist = artist
		# 	else
		# 		new_artist = self.new(name)
		# 	end
		# end
		# new_artist
		# binding.pry

		found_artist = self.all.detect{|artist| artist.name == name}
		if found_artist
			found_artist
		else
			self.new(name)
		end
	end
	
	def print_songs
		@songs.each do |song|
			puts song.name
		end
	end

end
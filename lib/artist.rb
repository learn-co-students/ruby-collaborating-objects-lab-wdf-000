require '~/Development/code/ruby-collaborating-objects-lab-wdf-000/lib/song.rb'

class Artist
	attr_accessor :name, :songs
	@@all = []
	def initialize (name)
		@name = name
		@songs = []
	end

	def add_song (song)
		@songs << song
		song.artist = self
	end
	def self.all
		@@all
	end
	def save
		@@all << self
	end

	def self.find_or_create_by_name(string)
		@@all.each do | x |
			return x if x.name == string
		end
		tmp = Artist.new(string)
		tmp.save
		tmp
	end
	
	def print_songs
		@songs.each { |x| puts x.name }
	end

end


#song1 = Song.new("song1")
#song2 = Song.new("song2")
#
#someguy = Artist.new("guy")
#
#someguy.add_song(song1)
#someguy.add_song(song2)
#
#puts someguy.songs
#


#artist_1 = Artist.find_or_create_by_name("Michael Jackson")
#artist_2 = Artist.find_or_create_by_name("Michael Jackson")
#artist3 = Artist.new("someguy")
#artist3.save
#
#puts artist3.class
#puts artist_1.class

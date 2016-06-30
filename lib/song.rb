require 'pry'
class Song
	attr_accessor :name, :artist

	# @@songs = []
	def initialize(name)
		@name = name
	end

	def self.new_by_filename(filename)
		arr = filename.split(" - ")
		song_name = arr[1]
		artist_name = arr[0]
		song = Song.new(song_name)
		song.artist = Artist.find_or_create_by_name(artist_name)
		song.artist.add_song(song)
		song

	end


end




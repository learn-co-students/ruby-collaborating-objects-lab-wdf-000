require 'pry'
class Song
	
	attr_accessor :name, :artist

	def initialize(name)
		@name = name
	end

	def self.new_by_filename (string)
		arr = string.split('-')
		arr = arr.map { |x| x.strip }
		tmp = Song.new(arr[1])
		tmp.artist = Artist.find_or_create_by_name(arr[0])
		tmp.artist.add_song(tmp)
		tmp
	end

end


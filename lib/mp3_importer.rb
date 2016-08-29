require 'pry'

class MP3Importer
	attr_reader :path

	def initialize(path)
		@path = path
	end

	def files
		# binding.pry
		Dir.entries(path).delete_if {|file| file[0] == "."}
	end

	def import
		# binding.pry
		files.each do |filename|
			arr = filename.split(" - ")
			Artist.find_or_create_by_name(arr[0]).add_song(Song.new(arr[1]))
		end
	end
end


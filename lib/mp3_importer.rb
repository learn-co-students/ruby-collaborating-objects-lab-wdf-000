require 'pry'

class MP3Importer
	attr_accessor :path, :files

	def initialize(path)
		@path = path
	end

	def files
		# binding.pry
		@files = Dir.entries(path).select{|file| file.include?(".mp3")}
	end

	def import
		# self.files.each do |file|
		# 	artist_name = file.split(" - ")[0]
		# 	song_name = file.split(" - ")[1]
		# 	# binding.pry
		# 	Artist.find_or_create_by_name(artist_name).add_song(song_name)
		# end

		self.files.each do |filename|
			Song.new_by_filename(filename)
		end
	end

end
require 'pry'

class MP3Importer
	
	attr_accessor :path

	def initialize (path)
		@path = path
	end

	def files
		@fnames = Dir.glob(path+"/*.mp3")
		@files = []
		@fnames.each do |x| 
			@files <<  x.split('/').last
		end
		@files
		#return @files.size
	end

	def import
		files.each { |x| Song.new_by_filename(x) }	
	end	

end



#test_music_path = "./spec/fixtures/mp3s"
#music_importer = MP3Importer.new(test_music_path)
#
#puts music_importer.files


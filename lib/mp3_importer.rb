class MP3Importer

attr_accessor :path, :files

def initialize(path)
  @path = path 
  @files = Dir.glob("#{path}/*.mp3").collect{|f| f.gsub("#{path}/", "")}
end



def import
   @files.each do |filename| 
    song = Song.new_by_filename(filename)
    song.artist.add_song(song)
  end
end

end
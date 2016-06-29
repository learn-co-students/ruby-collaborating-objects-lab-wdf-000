class MP3Importer

attr_accessor :path

def initialize(path)
  @path = path
end

def files
  Dir.entries(path).select {|entry| entry.include?("mp3")}
end

def import
  self.files.each do |filename|
    filename_array = filename.split(" - ")
    artist = Artist.find_or_create_by_name(filename_array[0])
    artist.save
    new_song = Song.new(filename_array[1])
    artist.add_song(new_song)
  end
end

end

#parse all the filenames in the db/mp3s folder 
#send the filenames to the Song class

class MP3Importer

attr_accessor :path

def initialize(path_name)
  self.path = path_name
end

def files
  Dir.entries(self.path).reject {|file| file.start_with? "."}
end

def import
  # song = Song.new(list_of_filenames)
  self.files.each do |filename|
    Song.new_by_filename(filename)
  end
end

end


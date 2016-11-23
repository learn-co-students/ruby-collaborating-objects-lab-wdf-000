class MP3Importer
  attr_reader :path
  def initialize(file_path)
    @path = file_path 
  end
  def files 
    Dir.entries(path).select {|e| e.include?("mp3")} 
  end
  def import
    self.files.each {|file| puts file.split(" - ")[1]} 
    self.files.each do |file|
      artist = Artist.find_or_create_by_name(file.split(" - ")[0])
      artist.add_song(Song.new(file.split(" - ")[1])) 
    end
  end
end

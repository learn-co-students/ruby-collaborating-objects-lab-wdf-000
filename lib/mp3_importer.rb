require 'pry'

class MP3Importer
  attr_accessor :songs
  attr_reader :path, :files

  def initialize(path)
    @path = path
    Dir.chdir(path) do 
      @files = Dir.glob("*.mp3")
    end
  end

  def import
   @files.each do |file_name|
    song = Song.new_by_filename(file_name)
    song.artist.add_song(song)
    end
  end

end
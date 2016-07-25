require 'pry'

class MP3Importer

  attr_accessor :path, :files

  def initialize(file_path)
    @path = file_path
  end


  def files
    #Obtains all files in specified directory, excluding "." and ".." files
    Dir.entries(@path).select {|f| !File.directory? f}
  end

  def import
    self.files.each do |song_file|
      Song.new_by_filename(song_file)
    end
  end

end
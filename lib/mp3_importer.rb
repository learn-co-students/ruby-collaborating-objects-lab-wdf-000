require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
    @files = []
  end


  def files
    @files = Dir.glob("#{@path}/*.mp3")
    @files = @files.collect do |file|
      file.split("/").last
    end
    
  end

  def import
    self.files.each do |file|
      song = Song.new_by_filename(file)
    end

  end



end
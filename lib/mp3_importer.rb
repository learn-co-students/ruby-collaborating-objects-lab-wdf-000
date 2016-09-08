class MP3Importer

  attr_accessor :path

  def initialize(file)
    @path = file
    @files = []
  end

  def files
    @files =  Dir.glob("#{@path}/*.mp3").collect{|file| file.split("/").last}
  end

  def import
    self.files.each {|file| song = Song.new_by_filename(file)}
  end
end

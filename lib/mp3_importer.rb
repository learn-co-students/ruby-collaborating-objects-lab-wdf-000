require 'pry'
class MP3Importer
  attr_accessor :path, :files
  @all = []
  def initialize(path)
    @path = path
    @files = []

  end

  def files
    @files = Dir.glob("#{@path}/*.mp3")
    # back_here = Dir.pwd
    # Dir.chdir(@path)
    @files = @files.map {|files| files.split("/").last}

  end

  def import
    self.files.each do |file|
      Song.new_by_filename(file)
    end
  end
end
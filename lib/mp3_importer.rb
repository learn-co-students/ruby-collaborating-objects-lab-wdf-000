require 'pry'
class MP3Importer
  attr_accessor :path, :files

  def initialize(path_to_music)
    @path = path_to_music
    @files = []
  end

  def files
    get_back_here = Dir.pwd
    Dir.chdir(@path)
    @files = Dir.glob("*.mp3")
    Dir.chdir(get_back_here)
    @files
  end

  def import
      files.each do |file|
      Song.new_by_filename(file)
    end
  end
end

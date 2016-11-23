require 'pry'
class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(@path).select { |file| file.end_with?('.mp3') }
    #entries returns an array of filename that the path leads to in the specified directory
    # binding.pry
  end

  def import
    files.each { |file| Song.new_by_filename(file) }
  end

end

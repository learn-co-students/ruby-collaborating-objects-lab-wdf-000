require "pry"
class MP3Importer
  attr_accessor :path, :songs

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(self.path).reject{|file| file == "." || file == ".."}
  end

  def import
    songs = files.collect do |filename|
      Song.new_by_filename(filename)
    end
    # binding.pry
  end
end

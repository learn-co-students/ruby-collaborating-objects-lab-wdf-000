class MP3Importer
  attr_reader :path, :files

  def initialize(path)
    @path = path
    @files = Dir.entries(path).select{|x| /\.mp3$/.match(x)}
  end

  def import
    @files.each{|filename| Song.new_by_filename(filename)}
  end
end

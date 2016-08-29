class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(path).select{|file| file.include?(".mp3")}
  end

  def import
    self.files.each do |file|
      Song.new_by_filename(file)
    end
    # Song.new_by_filename(some_filename)
  end
end

class MP3Importer
  attr_accessor :path

  def initialize(path_name)
    self.path = path_name
  end

  def files
    Dir.entries(self.path).reject {|file| file.start_with? "."}
  end

  def import
    files.each do |file_name|
      Song.new_by_filename(file_name)
    end 
  end

end

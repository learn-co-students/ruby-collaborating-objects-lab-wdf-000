class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path

  end

  def path
    @path
  end

  def files
    #*.mp3 -> matches all files ending with .mp3
    @files = Dir.glob("#{path}/*.mp3").collect do |file|
      file.gsub("#{path}/","")
    end
    @files
  end

  def import
    # title = @files.scan[/\b+\w+\s+\w+\b+ -/]
    # name = title[0].gsub("-","")
    # song = title[1].gsub("-","")
    # new_song = Song(song)
    # new_song.artist = name
    # "Action Bronson - Larry Csonka - indie.mp3"
    files.each do |file|
       Song.new_by_filename(file)
    end


  end

end

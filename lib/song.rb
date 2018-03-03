require 'pry'
class Song 
  
attr_accessor :name, :artist   

def initialize(name)
  @name = name 
end 

def self.new_by_filename(filename)
    filename.chomp!(".mp3")
    info = filename.split(" - ")
    song = new(info[1])
    song.artist = Artist.find_or_create_by_name(info[0])
<<<<<<< HEAD
    Artist.all.uniq!{|artist| artist.name}
    song.artist.add_song(song)
=======

>>>>>>> b3eb2e07d29eb6ccf6cb6665dfb35ed186bcc604
    song
  end 

end 

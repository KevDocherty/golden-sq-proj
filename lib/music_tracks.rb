# File: lib/music_tracks.rb

class MusicTracks
  
  def initialize
    # initialise array to hold the music tracks listened to
    # return nothing
    @tracks = []
  end
  
  def add_tracks(track)
    # track is a string
    # add the supplied track to the list (array)
    @tracks << track
  end
  
  def list_tracks()
    # return a the list of tracks listened to
    @tracks.join(", ")
  end
end
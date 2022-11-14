# File:   spec/music_tracks_spec.rb

require "music_tracks"

RSpec.describe MusicTracks do
  it "creates a new track list" do
    tracks = MusicTracks.new()
    expect(tracks.list_tracks()).to eq "" 
  end
  
  it "adds a track" do
    tracks = MusicTracks.new()
    tracks.add_tracks("Agadoo")
    expect(tracks.list_tracks()).to eq "Agadoo"
  end
  
  it "adds 2 tracks" do
    tracks = MusicTracks.new()
    tracks.add_tracks("Agadoo")
    tracks.add_tracks("Watermelon Sugar")
    expect(tracks.list_tracks()).to eq "Agadoo, Watermelon Sugar"
  end

end

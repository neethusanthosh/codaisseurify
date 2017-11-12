require 'rails_helper'

# RSpec.describe Artist, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end


describe "association with song" do
  let(:artist) { create :artist }
  let!(:song) { create :song, artist: artist }

  it "has many songs" do
    song1 = artist.songs.new(title: "Dil se")
    song2 = artist.songs.new(title: "Roja")

    expect(artist.songs).to include(song1)
    expect(artist.songs).to include(song2)
  end

  it "deletes associated songs" do
    expect { artist.destroy }.to change(Song, :count).by(-1)
  end
end

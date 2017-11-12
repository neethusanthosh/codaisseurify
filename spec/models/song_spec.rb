require 'rails_helper'

#RSpec.describe Song, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
#end

describe "association with artist" do
  let(:artist) { create :artist }

  it "belongs to a artist" do
    song = artist.songs.build(title: "")

    expect(song.artist).to eq(artist)
  end

  # OR, go the shoulda way:

    
end

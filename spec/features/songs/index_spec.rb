require 'rails_helper'

RSpec.describe "Songs index", type: :feature do

  # As a user, 
  # when I visit '/songs' 
  # I see each song's title and play count

  describe "As a user, " do
    describe "When I visit /songs, " do
      it "I see each song's title and play count" do
        carly = Artist.create!(name: "Carly Rae Jepsen")
        song_1 = Song.create!(title: "I really like you",
                              length: 208,
                              play_count: 923847,
                              artist: carly)
        song_2 = Song.create!(title: "Call me maybe",
                              length: 208,
                              play_count: 923847,
                              artist: carly)                      
        visit "/songs"
        expect(page).to have_content(song_1.title)
        expect(page).to have_content("Play count: #{song_1.play_count}")
        expect(page).to have_content(song_2.title)
        expect(page).to have_content("Play count: #{song_2.play_count}")
      end
    end

#     As a user
# When I visit a Song show page
# Then I see the song's title, length, and play count
    # describe "When I visit /songs/show, " do
    #   it "I see the song's title, length, and play count" do
    #     carly = Artist.create!(name: "Carly Rae Jepsen")
    #     song_1 = Song.create!(title: "I really like you",
    #                           length: 208,
    #                           play_count: 923847,
    #                           artist: carly)
    #     song_2 = Song.create!(title: "Call me maybe",
    #                           length: 208,
    #                           play_count: 923847,
    #                           artist: carly)                      
        # visit "/songs/#{song_1.id}" 
    #     expect(page).to have_content(song_1.title)
    #     expect(page).to have_content("Play count: #{song_1.play_count}")
    #     expect(page).to have_content("Length: #{song_1.length}")
        
    #     expect(page).to have_content(song_2.title)
    #     expect(page).to have_content("Play count: #{song_2.play_count}")
    #     expect(page).to have_content("Length: #{song_2.length}")
    #   end
    # end
  end
end
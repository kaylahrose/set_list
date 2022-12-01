require 'rails_helper'

RSpec.describe 'the songs show page' do
    # user story
    it 'displays the song title' do
        artist = Artist.create!(name: 'Carly Rae Jepson')
        song = artist.songs.create!(title: "I really like you", length: 208, play_count: 923874)
        song_2 = artist.songs.create!(title: "Call me maybed", length: 4209, play_count: 24958372)
        visit "/songs/#{song.id}"

        visit "/songs/#{song.id}"

        expect(page).to have_content(song.title)
        expect(page).to_not have_content(song_2.title)

    end
    it 'displays the song length' do
        artist = Artist.create!(name: 'Carly Rae Jepson')
        song = artist.songs.create!(title: "I really like you", length: 208, play_count: 923874)
        song_2 = artist.songs.create!(title: "Call me maybed", length: 4209, play_count: 24958372)
        visit "/songs/#{song.id}"

        visit "/songs/#{song.id}"

        expect(page).to have_content(song.length)
        expect(page).to_not have_content(song_2.length)

    end

    it 'displays the name of artist for the song' do
        artist = Artist.create!(name: 'Carly Rae Jepson')
        song = artist.songs.create!(title: "I really like you", length: 208, play_count: 923874)
        song_2 = artist.songs.create!(title: "Call me maybed", length: 4209, play_count: 24958372)
        visit "/songs/#{song.id}"

        visit "/songs/#{song.id}"

        expect(page).to have_content(song.title) 
        # save_and_open_page
    end
end
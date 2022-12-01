require 'rails_helper'

RSpec.describe 'Artists songs index' do
  before :each do
    @prince = Artist.create!(name: 'Prince')
    @purple = @prince.songs.create!(title: 'Purple Rain', length: 845, play_count: 8599)
    @beret = @prince.songs.create!(title: 'Raspberry Beret', length: 665, play_count: 99)
  end
  it 'shows all of the titles of the songs for the artist' do
    # prince = Artist.create!(name: 'Prince')
    # purple = prince.songs.create!(title: 'Purple Rain', length: 845, play_count: 8599)
    # beret = prince.songs.create!(title: 'Raspberry Beret', length: 665, play_count: 99)
  
    visit "/artists/#{@prince.id}/songs"

    expect(page).to have_content(@purple.title)
    expect(page).to have_content(@beret.title)
  end

  it 'links to each songs show page' do
    

    visit "/artists/#{@prince.id}/songs"
    
    click_on @purple.title
    
    expect(current_path).to eq("/songs/#{@purple.id}")
  end
  it 'shows the average song length for hte artist' do
    visit "/artists/#{@prince.id}/songs"

    expect(page).to have_content("Average Song Length for Prince: 755")

  end
end
# As a visitor
# When I visit the artists index
#  And click on 'New Artist'
# Then my current path is '/artists/new'
# And I fill in the artist's name
#  Then I click 'Create Artist'
#  I am redirected to this new artists show page

require 'rails_helper'

RSpec.describe 'the Artist creation' do
  it 'links to the new page from the artists index' do
    visit '/artists'

    click_link('New Artist')
    expect(current_path).to eq('/artists/new')
  end

  it 'can create a new artist' do
    visit 'artists/new'

    fill_in('Name', with: 'Prince')
    click_button('Create Artist')

    # new_artist_id = Artist.last.id
    expect(current_path).to eq("/artists")
    expect(page).to have_content("Prince")
  end
end
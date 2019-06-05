feature 'On bookmarks page' do
  background { truncates }
  background { add_bookmarks }

  scenario 'user can see bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content "Makers"
  end

  scenario 'url link is available' do 
    visit('/bookmarks')
    expect(page).to have_link('Google', :href => 'http://www.google.com')
  end 

  scenario 'user can delete bookmark' do
    visit('/bookmarks')
    click_button 'Delete 3'
    expect(page).not_to have_link('Google')
  end

end

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
    click_button 'delete_3'
    expect(page).not_to have_link('Google')
  end

  scenario 'user can update bookmark' do 
    visit('/bookmarks')
    click_button 'update_3'
    fill_in 'url', with: 'http://yahoo.com'
    fill_in 'title', with: 'Yahoo'
    click_button 'Update'
    expect(page).to have_content 'Yahoo'
  end 

end

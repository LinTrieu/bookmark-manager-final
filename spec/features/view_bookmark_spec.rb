feature 'view all bookmarks' do
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
end

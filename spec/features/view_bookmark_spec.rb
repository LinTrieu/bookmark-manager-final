feature 'view all bookmarks' do
  background { truncates }
  background { add_bookmarks }

  scenario 'user can see bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.google.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
  end
end

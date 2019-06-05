feature 'Submit a new bookmark to Bookmark Manager' do
  background { truncates }
  background { add_bookmarks }

  scenario 'user can submit a new bookmark and gets confirmation' do
    visit('/bookmarks')
    fill_in('Bookmark URL', with: 'https://www.facebook.com/')
    click_on('Add new bookmark')
    expect(page).to have_content('New bookmark added')
  end

  scenario 'user can see new bookmark' do
    visit('/bookmarks')
    fill_in('Bookmark URL', with: 'https://www.facebook.com/')
    click_on('Add new bookmark')
    expect(page).to have_content('https://www.facebook.com/')
  end
end
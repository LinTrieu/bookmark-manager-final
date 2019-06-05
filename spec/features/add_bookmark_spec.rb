feature 'Submit a new bookmark to Bookmark Manager' do
  background { truncates }
  background { add_bookmarks }

  scenario 'user can submit a new bookmark via form' do
    visit('/bookmarks')
    fill_in('Bookmark URL', with: 'https://www.facebook.com/')
    click_on('Add new bookmark')
    expect(page).to have content('New bookmark added')
    expect(page).to have_content('https://www.facebook.com/')
  end
end
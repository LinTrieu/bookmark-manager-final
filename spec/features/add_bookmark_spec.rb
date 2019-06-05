feature 'Submit a new bookmark to Bookmark Manager' do
  background { truncates }
  background { add_bookmarks }

  scenario 'user can submit a new bookmark and can see new bookmark' do
    visit('/new')
    fill_in('url', with: 'https://www.facebook.com/')
    click_on('create_new_bookmark')
    expect(page).to have_content('https://www.facebook.com/')
  end
end
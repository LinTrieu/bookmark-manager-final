feature 'Submit a new bookmark to Bookmark Manager' do
  background { truncates }
  background { add_bookmarks }

  scenario 'user can submit a new bookmark and can see new bookmark' do
    visit('/new')
    fill_in('url', with: 'https://www.facebook.com/')
    fill_in('title', with: 'Facebook')
    click_button 'Add new Bookmark'
    expect(page).to have_content('Facebook')
  end

end
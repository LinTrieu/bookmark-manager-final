feature 'Submit new bookmark' do
  background { truncates }
  background { add_bookmarks }

  scenario 'submits a new bookmark and displays' do
    visit('/new')
    fill_in('url', with: 'https://www.facebook.com/')
    fill_in('title', with: 'Facebook')
    click_button 'Add new Bookmark'
    expect(page).to have_content('Facebook')
  end

  scenario 'display error message if invalid URL' do
    visit '/new'
    fill_in('url', with: 'wwwww.yahoo.co.uuk')
    click_button 'Add new Bookmark'
    expect(page).not_to have_content('wwwww.yahoo.co.uuk')
    expect(page).to have_content('Invalid URL, please try again.')
  end
end
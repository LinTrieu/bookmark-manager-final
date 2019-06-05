require 'bookmark'

describe Bookmark do
  before(:each) { truncates }
  before(:each) { add_bookmarks }

  it '.all method returns a list of bookmarks' do
    output = Bookmark.all
    expect(output[0]['url']).to include("http://www.makersacademy.com")
    expect(output[0]['title']).to include("Makers")
  end

  it 'after .create, .all returns a new url and title' do 
    Bookmark.create('http://www.facebook.com', 'Facebook')
    output = Bookmark.all
    expect(output.last['url']).to include('http://www.facebook.com')
    expect(output.last['title']).to include('Facebook')
  end 

  it 'deletes a bookmark' do 
    Bookmark.delete(3)
    output = Bookmark.all
    expect(output.last['title']).not_to eq('Google')
  end 

  it 'updates a bookmark' do
    Bookmark.update(3, 'Yahoo', 'yahoo.co.uk')
    output = Bookmark.all
    expect(output.last['title']).to eq('Yahoo')
  end
end
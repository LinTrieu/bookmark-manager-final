require 'bookmark'

describe Bookmark do
  before(:each) { truncates }
  before(:each) { add_bookmarks }

  it '.all method returns a list of bookmarks' do
    output = Bookmark.all
    expect(output).to include("http://www.makersacademy.com")
    expect(output).to include("http://www.destroyallsoftware.com")
    expect(output).to include("http://www.google.com")
  end
end
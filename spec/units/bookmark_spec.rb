require 'bookmark'

describe Bookmark do
  let(:bookmark) { Bookmark.new }

  it 'returns a list of bookmarks' do
    bookmark.all
    output = bookmark.list
    expect(output).to include("http://makers.tech")
    expect(output).to include("http://www.destroyallsoftware.com")
    expect(output).to include("http://www.google.com")
  end
end

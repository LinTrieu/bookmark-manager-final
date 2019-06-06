require 'comment'

describe Comment do
  before(:each) { truncates }
  before(:each) { add_bookmarks }

  it 'after .add, .all returns a new comment' do 
    Comment.add(1, 'Oh cool')
    output = Comment.all(1)
    expect(output.last['text']).to eq('Oh cool')
  end 
end
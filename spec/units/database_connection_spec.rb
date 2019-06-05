require 'database_connection'

describe DatabaseConnection do
  before(:each) { truncates }
  before(:each) { add_bookmarks }

  it 'returns a pg instance' do
    expect(DatabaseConnection.setup).to be_a(PG::Connection)
  end

  it 'sets up a connection to a databsae through PG' do 
    expect(PG).to receive(:connect).with(dbname: 'bookmark_manager_test')
    DatabaseConnection.setup
  end 
end
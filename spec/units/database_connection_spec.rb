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

  it 'executres a query via PG' do 
    connection = DatabaseConnection.setup
    expect(connection).to receive(:exec).with("SELECT * FROM bookmarks")
    DatabaseConnection.query("SELECT * FROM bookmarks")
  end 
end
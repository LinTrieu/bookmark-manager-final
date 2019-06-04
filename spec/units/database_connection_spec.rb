require 'database_connection'

describe DatabaseConnection do
  it 'returns a pg instance' do
    expect(DatabaseConnection.setup).to be_a(PG::Connection)
  end
end
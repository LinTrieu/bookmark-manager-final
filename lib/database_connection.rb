require 'pg'

class DatabaseConnection
  def self.setup
    @connection = PG.connect :dbname => 'bookmark_manager'
  end

  def self.current_connection
    @connection
  end

  def self.query(sql)
    @connection.exec(sql)
  end
end
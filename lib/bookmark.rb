require 'pg'
require_relative 'database_connection'

class Bookmark

  def self.all
    result = DatabaseConnection.query('SELECT * FROM bookmarks')
    result.map{ |row| row['url'] }
  end
end
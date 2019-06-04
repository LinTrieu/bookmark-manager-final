require 'pg'
require_relative 'database_connection'

class Bookmark

  def self.all
    DatabaseConnection.setup
    result = DatabaseConnection.query('SELECT * FROM bookmarks')
    result.map{ |bookmark| bookmark['url'] }
  end
end

pp Bookmark.all
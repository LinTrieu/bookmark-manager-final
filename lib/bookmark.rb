require 'pg'
require_relative 'database_connection'

class Bookmark

  def self.all
    result = DatabaseConnection.query('SELECT * FROM bookmarks')
    result.map { |row| row }
  end

  def self.create(new_bookmark, title)
    DatabaseConnection.query("INSERT INTO bookmarks (url, title) 
                              VALUES ('#{new_bookmark}', '#{title}')")
  end

  def self.delete(id)
    DatabaseConnection.query("DELETE FROM bookmarks WHERE id=#{id}")
  end
end
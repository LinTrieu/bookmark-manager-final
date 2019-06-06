require 'pg'
require 'uri'
require_relative 'database_connection'

class Comment

  def self.all(bookmark_id)
    result = DatabaseConnection.query("SELECT * FROM comments WHERE bookmark_id=#{bookmark_id}")
    result.map { |row| row }
  end

  def self.add(bookmark_id, text)
    DatabaseConnection.query("INSERT INTO comments (bookmark_id, text) 
                            VALUES (#{bookmark_id}, '#{text}')")      
  end

end


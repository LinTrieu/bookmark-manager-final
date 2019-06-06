require 'pg'
require 'uri'
require_relative 'database_connection'

class Bookmark

  def self.all
    result = DatabaseConnection.query('SELECT * FROM bookmarks')
    result.map { |row| row }
  end

  def self.create(new_url, title)
      DatabaseConnection.query("INSERT INTO bookmarks (url, title) 
                              VALUES ('#{new_url}', '#{title}')")      
  end

  def self.delete(id)
    DatabaseConnection.query("DELETE FROM bookmarks WHERE id=#{id}")
  end
  
  def self.update(id, title, url)
    DatabaseConnection.query("UPDATE bookmarks 
                            SET title='#{title}', url='#{url}'
                            WHERE id=#{id}")
  end

  def self.valid?(url)
    check = url =~ /\A#{URI::regexp(['http', 'https'])}\z/
    check == 0 
    end

end
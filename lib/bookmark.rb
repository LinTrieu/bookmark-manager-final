require 'pg'

class Bookmark

  # def self.all
  #   result = DatabaseConnection.query('SELECT * FROM bookmarks')
  #   result.map{ |row| Bookmark.new(row['id'],row['url']) }
  # end

  def self.all
    result = DatabaseConnection.query('SELECT * FROM bookmarks')
    result.map{ |row| Bookmark.new(row['id'],row['url']) }
  end

end

puts Bookmark.all

# Previous code before attempts to code class methods self
# begin 
#   con = PG.connect(:dbname => 'bookmark_manager')  
#   rs = con.exec "SELECT * FROM bookmarks"
#   rs.each do |row|
#     @list << "%s" % [row['url']]
#   end
# end
# b = Bookmark.new
# b.all
# pp b.list
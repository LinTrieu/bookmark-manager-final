require 'pg'

class Bookmark
  attr_reader :list

  def initialize
    @list = []
  end

  def all
    begin 
      con = PG.connect :dbname => 'bookmark_manager', :user => 'linna@paddle.com'
      
      rs = con.exec "SELECT * FROM bookmarks"
  
      rs.each do |row|
        @list << "%s" % [row['url']]
      end
    end
  end
end

# b = Bookmark.new
# b.all
# pp b.list
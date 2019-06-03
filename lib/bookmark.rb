require 'pg'

class Bookmark
  attr_reader :list

  def initialize
    @list = [1]
  end

  def all
    # @list = ['bbc', 'makersacademy']
    
    begin 
      con = PG.connect :dbname => 'bookmark_manager', :user => 'linna@paddle.com'
      
      rs = con.exec "SELECT * FROM bookmarks"
  
      rs.each do |row|
        item = "%s" % [row['url']]
        @list << item
      end
    end
  end

  b = Bookmark.new
  puts b
  b.all
  puts b.list
  
  # puts "*************"
  # begin 
  #   con = PG.connect :dbname => 'bookmark_manager', :user => 'linna@paddle.com'
    
  #   rs = con.exec "SELECT * FROM bookmarks"

  #   rs.each do |row|
  #     puts "%s" % [row['url']]
  #   end
  # end

  # puts @list
  # puts "*************"
end

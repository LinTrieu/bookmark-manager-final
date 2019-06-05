def truncates
  DatabaseConnection.query('TRUNCATE bookmarks RESTART IDENTITY CASCADE')
end

def add_bookmarks
  DatabaseConnection.query("INSERT INTO bookmarks(url) 
                            VALUES ('http://www.makersacademy.com'),
                                   ('http://www.destroyallsoftware.com'),
                                   ('http://www.google.com')")
end
def truncates
  DatabaseConnection.query('TRUNCATE bookmarks, comments RESTART IDENTITY CASCADE')
end

def add_bookmarks
  DatabaseConnection.query("INSERT INTO bookmarks(url,title) 
                            VALUES ('http://www.makersacademy.com','Makers'),
                                   ('http://www.destroyallsoftware.com', 'Destroy'),
                                   ('http://www.google.com', 'Google')")
end
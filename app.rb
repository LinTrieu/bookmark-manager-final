require 'sinatra/base'
require './lib/bookmark.rb'

class BookmarkManager < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @list = Bookmark.all
    @new_url = Bookmark.create(params['create_bookmark'])
    erb :bookmarks
  end

  run! if app_file == $0
end


# @new_url = params['create_bookmark']
# Boookmark.create(@new_url)
require 'sinatra/base'
require './lib/bookmark.rb'
require_relative './databaseconnection_setup.rb'

class BookmarkManager < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @list = Bookmark.all
    erb :bookmarks
  end

  run! if app_file == $0
end

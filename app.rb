require 'sinatra/base'
require './lib/bookmark.rb'

class BookmarkManager < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @list = Bookmark.all
    erb :bookmarks
  end

  post '/submit' do
    session[:new_url] = Bookmark.create(params['create_bookmark'])
    redirect '/new'
  end

  get '/new' do
    @new_url = session[:new_url]
    erb :new
  end

  run! if app_file == $0
end


# get '/bookmarks' do
#   @list = Bookmark.all
#   @new_url = Bookmark.create(params['create_bookmark'])
#   erb :bookmarks
# end

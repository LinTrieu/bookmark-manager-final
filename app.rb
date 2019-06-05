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

  get '/new' do
    erb :new
  end

  post '/submit' do
    @new_url = Bookmark.create(url: params[:urls])
    redirect '/new'
  end

  run! if app_file == $0
end


# get '/bookmarks' do
#   @list = Bookmark.all
#   @new_url = Bookmark.create(params['create_bookmark'])
#   erb :bookmarks
# end

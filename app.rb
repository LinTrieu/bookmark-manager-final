require 'sinatra/flash'
require 'sinatra/base'
require './lib/bookmark.rb'
enable :sessions

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
    Bookmark.create(params[:url], params[:title])
    redirect '/bookmarks'
  end

  post '/delete' do 
    Bookmark.delete(params[:id])
    redirect '/bookmarks'
  end 

  get '/update' do
    @id = params[:id]
    erb(:update)
  end

  post '/bookmarks' do
    Bookmark.update(params[:id], params[:title], params[:url])
    redirect '/bookmarks'
  end 

  run! if app_file == $0
end

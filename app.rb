require 'sinatra/flash'
require 'sinatra/base'
require './lib/bookmark.rb'

class BookmarkManager < Sinatra::Base
  enable :sessions
  register Sinatra::Flash

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
    if Bookmark.valid?(params[:url])
     Bookmark.create(params[:url], params[:title])
     redirect '/bookmarks'
    else
      flash[:error] = 'Invalid URL'
      flash[:error]
      redirect '/new'
    end
     
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

# frozen_string_literal: true
require './lib/bookmark'
require 'sinatra/base'

class BookmarkManager < Sinatra::Base
  get '/' do
    'Bookmark Manager'
  end

  get '/bookmarks' do
    p ENV

    @bookmarks = Bookmark.all
    erb(:'bookmarks/index')
  end

  run! if app_file == $PROGRAM_NAME
end

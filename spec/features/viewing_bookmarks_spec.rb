# frozen_string_literal: true
require 'pg'

feature 'Viewing bookmarks' do
  scenario 'A user can view bookmarks' do
    
    # Add test data
    
    visit('/bookmarks')

    Bookmark.create(url: "http://makers.tech/") 
    Bookmark.create(url: "http://www.google.com") 
    Bookmark.create(url: "http://www.destroyallsoftware.com") 
  end
end

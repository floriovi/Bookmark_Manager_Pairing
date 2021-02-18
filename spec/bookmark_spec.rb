# frozen_string_literal: true

require 'bookmark'

RSpec.describe Bookmark do
  describe '.all' do
    it 'shows all bookmarks' do
      conn = PG.connect(dbname: 'bookmark_manager_test')

      # Add rspec test data
      conn.exec("INSERT INTO bookmarks (url) VALUES('http://makers.tech/');")
      conn.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
      conn.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")

      bookmarks = Bookmark.all

      expect(bookmarks).to include('http://makers.tech/')
      expect(bookmarks).to include('http://www.destroyallsoftware.com')
      expect(bookmarks).to include('http://www.google.com')
    end
  end

  describe '.create' do
    it 'creates a new bookmark' do
      Bookmark.create(url: 'http://bookmarktest.com')

      expect(Bookmark.all).to include 'http://bookmarktest.com'
    end
  end
end

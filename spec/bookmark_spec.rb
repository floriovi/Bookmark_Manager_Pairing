# frozen_string_literal: true

require 'bookmark'

RSpec.describe Bookmark do
  describe '.all' do
    it 'shows all bookmarks' do
      bookmarks = Bookmark.all

      expect(bookmarks).to include('https://makers.tech/')
      expect(bookmarks).to include('http://www.google.com')
      expect(bookmarks).to include('http://www.destroyallsoftware.com')
    end
  end
end

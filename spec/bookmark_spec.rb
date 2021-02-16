require 'bookmark'

RSpec.describe Bookmark do
  describe '.all' do
    it 'shows all bookmarks' do
      bookmarks = Bookmark.all

      expect(bookmarks).to include("https://makers.tech/")
      expect(bookmarks).to include("https://github.com/makersacademy")
      expect(bookmarks).to include("https://www.google.co.uk/")
    end
  end
end
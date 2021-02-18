# frozen_string_literal: true
require 'pg'

feature 'Viewing bookmarks' do
  scenario 'A user can view bookmarks' do
    conn = PG.connect(dbname: 'bookmark_manager_test')

    # Add test data
    conn.exec("INSERT INTO bookmarks VALUES(1, 'http://makers.tech/');")
    conn.exec("INSERT INTO bookmarks VALUES(2, 'http://www.destroyallsoftware.com');")
    conn.exec("INSERT INTO bookmarks VALUES(3, 'http://www.google.com');")

    visit('/bookmarks')

    expect(page).to have_content 'http://makers.tech/'
    expect(page).to have_content 'http://www.google.com'
    expect(page).to have_content 'http://www.destroyallsoftware.com'
  end
end

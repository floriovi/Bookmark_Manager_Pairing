feature 'Adding a new bookmark' do
  scenario 'Allows a user to add a bookmark to Bookmark Manager' do
    visit('/bookmarks/new')
    fill_in('url', with: 'http://www.bookmarktest.com')
    click_button('Submit')

    expect(page).to have_content('http://www.bookmarktest.com')
  end
end
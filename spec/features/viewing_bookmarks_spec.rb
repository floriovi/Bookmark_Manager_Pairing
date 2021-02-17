feature 'Viewing bookmarks' do
  scenario 'A user can view bookmarks' do
    visit('/bookmarks')

    expect(page).to have_content "https://makers.tech/"
    expect(page).to have_content "http://www.google.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
  end
end 
  
feature 'Viewing bookmarks' do
  scenario 'A user can view bookmarks' do
    visit('/bookmarks')

    expect(page).to have_content "https://makers.tech/"
    expect(page).to have_content "https://github.com/makersacademy"
    expect(page).to have_content "https://www.google.co.uk/"
  end
end 
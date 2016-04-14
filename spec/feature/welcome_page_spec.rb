feature 'welcome page' do
  scenario 'has the application title' do
    visit '/'
    expect(page).to have_content 'Gojimo Challenge'
  end
end

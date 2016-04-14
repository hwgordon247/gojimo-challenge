feature 'subject page' do

  scenario 'displays the chosen qualification title' do
    visit '/'
    click_button('Junior Certificate')
    expect(page).to have_content 'Junior Certificate'
  end

  
end

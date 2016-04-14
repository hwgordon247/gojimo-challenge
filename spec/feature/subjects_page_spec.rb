feature 'subject page' do

  scenario 'displays the chosen qualification title' do
    visit '/'
    click_button 'Continue'
    click_button('Junior Certificate')
    expect(page).to have_content 'Junior Certificate'
  end

  scenario 'displays the relevant subject for the chosen qualification' do
    visit '/'
    click_button 'Continue'
    click_button('Junior Certificate')
    expect(page).to have_content 'Maths'
  end

  scenario 'has a return button' do
    visit '/'
    click_button 'Continue'
    click_button('Junior Certificate')
    click_button('Return')
    expect(page).to have_content 'Qualifications'
  end
end

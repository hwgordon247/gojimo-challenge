def proceed_qualifications
  visit '/'
  click_button 'Continue'
end

def proceed_subjects
  proceed_qualifications
  click_button('Junior Certificate')
end

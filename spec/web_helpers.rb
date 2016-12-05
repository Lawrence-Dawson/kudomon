def sign_up
  visit '/'
  click_link 'Sign up'
  fill_in 'Email', with: 'test@test.com'
  fill_in 'Password', with: 'password'
  fill_in 'Password confirmation', with: 'password'
  click_button 'Sign up'
end

def sign_in
  visit '/'
  click_link 'Sign in'
  fill_in 'Email', with: 'test@test.com'
  fill_in 'Password', with: 'password'
  click_button 'Log in'
end

def capture_sourbulb
  visit '/kudomon'
  select '1', from: 'location'
  click_button 'Go to location!'
  click_link 'Capture Sourbulb!'
end

def capture_mancharred
  visit '/kudomon'
  select '2', from: 'location'
  click_button 'Go to location!'
  click_link 'Capture Mancharred!'
end

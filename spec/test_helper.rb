def sign_up
  visit '/'
  click_link 'Sign up'
  fill_in 'Username', with: 'Test Name'
  fill_in 'Email', with: 'test@example.com'
  fill_in 'Password', with: 'testtest'
  fill_in 'Password confirmation', with: 'testtest'
  click_button 'Sign up'
end

def creating_a_task
  visit tasks_path
  fill_in 'Description', with: 'Wash dishes'
  select '3', from: 'Priority'
  fill_in 'task_completiondate', with: Time.now.strftime("%d/%m/%Y")
  click_button 'Add task'
end

def creating_a_task_and_adding_to_cal
  visit tasks_path
  fill_in 'Description', with: 'Wash dishes'
  select '3', from: 'Priority'
  fill_in 'task_completiondate', with: Time.now.strftime("%d/%m/%Y")
  click_button 'Add task'
  click_button 'Add to calendar'
end

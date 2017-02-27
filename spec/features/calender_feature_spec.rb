# require 'rails_helper'
#
# feature '#Calender.' do
#   # User Story Three
#   # As a Group Member,
#   # So that I can see all tasks,
#   # I would like to be able to see a calender
#   context 'No tasks added:' do
#     scenario 'should display empty calender' do
#       visit '/calender'
#       expect(page).to have_content 'No tasks were created yet'
#     end
#   end
#   context 'Displays tasks if exists:' do
#     scenario 'I can create a task and see it in the calender' do
#       # sign_up
#       visit tasks_path
#       fill_in 'Description', with: 'Wash dishes'
#       check 'Super urgent'
#       click_button 'Add task'
#       click_button 'Add to calender'
#       visit '/calender'
#       expect(page).to have_content 'Wash dishes'
#     end
#   end
# end

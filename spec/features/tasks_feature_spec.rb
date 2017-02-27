require 'rails_helper'

feature '#Tasks.' do
  # User Story 1:
  # As a Group Member,
  # so that I can communicate tasks,
  # I would like to be able to add a task
  context 'No tasks added:' do
    scenario 'should display a prompt to add a task' do
      visit tasks_path
      expect(page).to have_content 'No tasks were created yet'
      expect(page).to have_button 'Add task'
    end
  end
  context 'Adding a task:' do
    scenario 'as a signed up user, I can create a task and see it on the page' do
      # sign_up
      visit tasks_path
      fill_in 'Description', with: 'Wash dishes'
      select '3', from: 'Priority'
      click_button 'Add task'
      expect(page).to have_content 'Wash dishes'
      expect(page).to have_content 'Super urgent'
      expect(page).to have_content 'Just created'
    end
    # scenario 'as a not signed up person I can not create a task' do
    #   visit tasks_path
    #   expect(page).not_to have_button 'Add task'
    # end
  end
end

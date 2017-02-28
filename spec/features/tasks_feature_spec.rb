require 'rails_helper'

feature '#Tasks.' do
  # User Story 1:
  # As a Group Member,
  # so that I can communicate tasks,
  # I would like to be able to add a task
  context 'No tasks added:' do
    scenario 'should display a prompt to add a task' do
      sign_up
      visit tasks_path
      expect(page).to have_content 'No tasks were created yet'
      expect(page).to have_button 'Add task'
    end
  end
  context 'Adding a task:' do
    scenario 'as a signed up user, I can create a task and see it on the page' do
      sign_up
      visit tasks_path
      fill_in 'Description', with: 'Wash dishes'
      select '3', from: 'Priority'
      click_button 'Add task'
      expect(page).to have_content 'Wash dishes'
      expect(page).to have_content 'Super urgent'
      expect(page).to have_content 'In progress'
    end
    scenario 'as a not signed up person I can not create a task' do
      visit tasks_path
      click_button 'Add task'
      expect(page).to have_content 'You need to sign in or sign up before continuing.'
    end

    scenario 'does not let you submit a task without a description' do
      sign_up
      visit tasks_path
      select '3', from: 'Priority'
      click_button 'Add task'
      expect(page).not_to have_content 'Super urgent'
      expect(page).not_to have_content 'In progress'
      expect(page).to have_content 'A task must have a description'
    end
  end
end

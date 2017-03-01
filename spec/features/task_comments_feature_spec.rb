require 'rails_helper'

feature '#TaskComments.' do
  # User Story Two
  # As a Group Member,
  # So that I can discuss tasks,
  # I would like to be able to comment on the task
  context 'Adding a comments to a task:' do
    scenario 'as a signed up user, I can add a comment to a task and see it on the page' do
      sign_up
      visit tasks_path
      fill_in 'Description', with: 'Wash dishes'
      select '3', from: 'Priority'
      click_button 'Add task'
      fill_in 'comment[comments]', with: 'Test comment'
      click_button 'Add comment'
      expect(page).to have_content 'Test comment'
    end
    scenario 'as a not signed up person I can not add a comment to a task' do
      visit tasks_path
      expect(page).not_to have_button 'Add comment'
    end

    scenario 'does not let you submit a comment with no text' do
      sign_up
      visit tasks_path
      fill_in 'Description', with: 'Wash dishes'
      select '3', from: 'Priority'
      click_button 'Add task'
      click_button 'Add comment'
      expect(page).to have_content 'A comment must have text'
    end
  end
end

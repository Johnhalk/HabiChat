require 'rails_helper'

feature '#Calendar.' do
  # User Story Three
  # As a Group Member,
  # So that I can see all tasks,
  # I would like to be able to see a calendar
  context 'No tasks added:' do
    scenario 'should display empty calendar' do
      visit '/calendar'
      expect(page).to have_content 'No tasks have been added to the calendar yet'
    end
  end
  context 'Displays calendar' do
    scenario 'displays current month and year' do
      visit '/calendar'
      expect(page).to have_content "#{Date::MONTHNAMES[Date.today.month]}"
      expect(page).to have_content "#{Time.now.year}"
    end
    scenario 'displays current month and year' do
      visit '/calendar'
      expect(page).to have_content 'Mon'
      expect(page).to have_content 'Tue'
      expect(page).to have_content 'Wed'
      expect(page).to have_content 'Thu'
      expect(page).to have_content 'Fri'
      expect(page).to have_content 'Sat'
      expect(page).to have_content 'Sun'
    end
    scenario 'displays current month and year' do
      visit '/calendar'
      expect(page).to have_content '1'
      expect(page).to have_content '28'
    end
  end
  # User Story Five.
  # As a Group Member,
  # So that group can see my task in the Calendar,
  # I would like to be able to add task to the Calendar
  context 'Displays task if exists:' do
    scenario 'I can create a task and see it in the calendar' do
      sign_up
      visit tasks_path
      fill_in 'Description', with: 'Wash dishes'
      select '3', from: 'Priority'
      click_button 'Add task'
      click_button 'Add to calendar'
      visit '/calendar'
      expect(page).to have_content 'Wash dishes'
    end

    scenario 'I can delete a task and it is deleted in the calendar' do
      sign_up
      visit tasks_path
      fill_in 'Description', with: 'Wash dishes'
      select '3', from: 'Priority'
      click_button 'Add task'
      click_button 'Add to calendar'
      visit tasks_path
      click_link "trash"
      visit '/calendar'
      expect(page).not_to have_content 'Wash dishes'
    end
  end
end

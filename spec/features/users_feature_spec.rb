require 'rails_helper'

feature "User can sign in and out" do
  context "user not signed in and on the homepage" do
    scenario "should see a 'sign in' link and a 'sign up' link" do
      visit('/')
      expect(page).to have_link('Sign in')
      expect(page).to have_link('Sign up')
    end

    scenario "should not see 'sign out' link" do
      visit('/')
      expect(page).not_to have_link('Sign out')
    end
  end

  context "user signed in on the homepage" do
    before do
      sign_up
    end

    scenario "should see 'sign out' link" do
      visit('/')
      expect(page).to have_link('Sign out')
    end

    scenario "should not see a 'sign in' link and a 'sign up' link" do
      visit('/')
      expect(page).not_to have_link('Sign in')
      expect(page).not_to have_link('Sign up')
    end
  end

  context "signed in user can view the calendar" do
    before do
      sign_up
    end

    scenario "shows calendar" do
      visit('/')
      fill_in 'Description', with: 'Wash dishes'
      select '3', from: 'Priority'
      click_button 'Add task'
      click_button 'Add to calendar'
      click_link 'Calendar'
      expect(page).to have_content(Date::MONTHNAMES[Date.today.month])
    end
  end
end

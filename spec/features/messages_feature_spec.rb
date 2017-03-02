require 'rails_helper'

feature "#Messages" do
  context "User isn't signed in" do
    scenario "Can't post a message" do
      visit '/'
      expect(page).not_to have_link 'Chat room'
    end
  end


  context "User signed in" do

    before do
      sign_up
    end

    scenario "Can post a message" do
      visit '/'
      click_link 'Chat room'
      fill_in 'message_content', with: 'Hi, this is a message'
      click_button 'send'
      visit '/chats'
      expect(page).to have_content 'Hi, this is a message'
    end

    scenario "Can post a message on new_message route" do
      visit new_message_path
      fill_in 'message_content', with: 'Hi, this is a message'
      click_button 'Add a message'
      visit '/chats'
      expect(page).to have_content 'Hi, this is a message'
    end

    scenario "Can post a message and see it with your username" do
      visit '/'
      click_link 'Chat room'
      fill_in 'message_content', with: 'Hi, this is a message'
      click_button 'send'
      visit '/chats/show'
      expect(page).to have_content 'Test Name: Hi, this is a message'
    end
  end
end

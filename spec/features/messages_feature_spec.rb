require 'rails_helper'

feature "#Messages" do
  context "User isn't signed in" do
    scenario "Can't post a message" do
      visit '/'
      click_link 'Chat room'
      fill_in 'message_content', with: 'Hi, this is a message'
      expect {click_button 'send'}.to raise_error
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
      visit '/chats/show'
      expect(page).to have_content 'Test Name: Hi, this is a message'
    end
  end
end

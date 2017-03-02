require 'rails_helper'

RSpec.describe Message, type: :model do

  context 'associations' do
    it 'should belong to a user and have many comments'do
      should belong_to(:user)
      should belong_to(:chat)
    end
  end
end

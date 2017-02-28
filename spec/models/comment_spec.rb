require 'rails_helper'

RSpec.describe Comment, type: :model do
  context 'validations' do
    it 'is not valid without any text' do
      comment = Comment.new
      expect(comment).not_to be_valid
      expect(comment).to have(1).error_on(:comments)
    end
  end
  context 'associations' do
    it 'should belong to a user and belong to a task'do
      should belong_to(:user)
      should belong_to(:task)
    end
  end
end

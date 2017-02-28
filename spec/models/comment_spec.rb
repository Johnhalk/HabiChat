require 'rails_helper'

RSpec.describe Comment, type: :model do
  context 'validations' do
    it 'is not valid without any text' do
      comment = Comment.new
      expect(comment).not_to be_valid
      expect(comment).to have(1).error_on(:comments)
    end
  end
end

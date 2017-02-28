require 'rails_helper'

RSpec.describe Task, type: :model do
  context 'validations' do
    it 'is not valid without a description' do
      task = Task.new(priority: '3')
      expect(task).not_to be_valid
      expect(task).to have(1).error_on(:description)
    end
    it 'is invalid if the priority is rated more than 3' do
      task = Task.new(priority: '5')
      expect(task).to have(1).error_on(:priority)
    end
  end
end

require 'rails_helper'

RSpec.describe User, type: :model do

  context 'associations' do
    it 'should have many tasks and comments'do
      should have_many(:tasks)
      should have_many(:comments)
      should have_many(:commented_tasks)
    end

    # it {is_expected.to have_many :commented_tasks}
  end

end

# require 'rails_helper'
# #
# RSpec.describe Event, type: :model do
#   context 'start_time' do
#     it 'returns day task was created' do
#       sign_up
#       visit '/'
#       fill_in 'Description', with: 'Wash dishes'
#       select '3', from: 'Priority'
#       click_button 'Add task'
#       @event = Event.new(1)
#       @time = @event.start_time
#       expect(@time.day).to eq(Time.now.day)
#     end
#   end
# end

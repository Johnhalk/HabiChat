class Event < ApplicationRecord

  def start_time
    Task.find(self.task_id).created_at
  end
end

class Event < ApplicationRecord

  def start_time
    Task.find(self.task_id).completiondate
  end
end

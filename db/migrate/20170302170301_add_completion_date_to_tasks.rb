class AddCompletionDateToTasks < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :completiondate, :date
  end
end

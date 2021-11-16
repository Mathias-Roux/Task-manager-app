class AddIdToTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :id, :integer
  end
end

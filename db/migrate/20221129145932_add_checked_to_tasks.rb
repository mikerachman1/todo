class AddCheckedToTasks < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :checked, :boolean, null: false, default: false
  end
end

class AddEmailNotificationToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :email_notification, :boolean
  end
end

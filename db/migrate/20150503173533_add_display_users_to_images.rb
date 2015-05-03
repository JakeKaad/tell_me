class AddDisplayUsersToImages < ActiveRecord::Migration
  def change
    add_column :images, :display_user_id, :integer
  end
end

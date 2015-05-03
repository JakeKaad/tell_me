class CreateDisplayUsers < ActiveRecord::Migration
  def change
    create_table :display_users do |t|
      t.timestamps
    end
  end
end

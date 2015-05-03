class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|

      t.text :message
      t.boolean :subscribed
      t.string :name

      t.timestamps
    end
  end
end

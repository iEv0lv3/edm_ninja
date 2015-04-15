class UserFeeds < ActiveRecord::Migration
  def change
    create_table :user_feeds do |t|

      t.integer :user_id, null: false

      t.timestamps
    end
  end
end

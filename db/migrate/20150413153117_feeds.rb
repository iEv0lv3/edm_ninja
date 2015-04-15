class Feeds < ActiveRecord::Migration
  def change
    create_table :feeds do |t|

      t.integer :user_id, null: false
      t.integer :group_id, null: false
      t.integer :post_id, null: false
      t.integer :comment_id, null: false
      t.integer :main_feed_id, null: false
      t.integer :user_feed_id, null: false

      t.timestamps
    end
  end
end

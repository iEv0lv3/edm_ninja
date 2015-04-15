class Posts < ActiveRecord::Migration
  def change
    create_table :posts do |t|

      t.integer :user_id, null: false
      t.text :body, null: false
      t.integer :post_love, default: 0, null: false

      t.timestamps
    end
  end
end

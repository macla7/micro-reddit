class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :url
      t.integer :user_id

      t.timestamps
      add_reference :users, :id, foreign_key: true
      
    end
  end
end

class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.text :body
      t.integer :post_id
      t.integer :user_id

      t.timestamps
      add_reference :posts, :id, foreign_key: true
      add_reference :users, :id, foreign_key: true
    end
  end
end

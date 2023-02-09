class CreatePost < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.integer :AuthorId
      t.text :Title 
      t.text :Text
      t.integer :CommentsCounter
      t.integer :LikesCounter

      t.timestamps
    end
    add_foreign_key :posts, :users, column: :AuthorId, primary_key: :id
    add_index :posts, :AuthorId
  end
end

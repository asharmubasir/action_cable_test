class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :user_id
      t.integer :article_id

      t.timestamps
    end

    add_index :comments, [:user_id, :article_id] 
  end
end

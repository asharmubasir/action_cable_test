class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.integer :user_id
      t.integer :comments_count, default: 0, null: false

      t.timestamps
    end

    add_index :articles, :user_id

  end
end

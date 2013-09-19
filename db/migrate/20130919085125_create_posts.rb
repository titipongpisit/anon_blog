class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.string :author, default: 'Anonymous'
      t.timestamps
    end 
  end
end

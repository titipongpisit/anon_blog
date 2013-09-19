class CreateTagLookups < ActiveRecord::Migration
  def change
    create_table :tag_lookups do |t|
      t.belongs_to :post
      t.belongs_to :tag 
      t.timestamps 
    end 
  end
end

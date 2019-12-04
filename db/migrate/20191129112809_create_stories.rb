class CreateStories < ActiveRecord::Migration[6.0]
  def change
    create_table :stories do |t|
      t.string :title 
      t.text :content 
      t.string :image
      
      t.references :user

      t.timestamps
    end
  end
end

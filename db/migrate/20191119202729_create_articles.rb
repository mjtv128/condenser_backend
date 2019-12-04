class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.text :title
      # t.string :urltoimage
      t.references :user
      t.string :article_key

      t.timestamps
    end 
    
    add_index :articles, :article_key

    end
  
end

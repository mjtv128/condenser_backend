class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :content
      t.references :user
      t.string :article_key
      # t.references :story

      t.timestamps
    end 

    add_index :comments, :article_key
  end

end

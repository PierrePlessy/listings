class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.timestamps
      t.text :content
      t.integer :user_id
      t.integer :listing_id
    end
  end
end

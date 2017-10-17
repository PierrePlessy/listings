class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.timestamps
      t.text :content
      t.integer :user_id
      t.integer :listing_id
    end
  end
end

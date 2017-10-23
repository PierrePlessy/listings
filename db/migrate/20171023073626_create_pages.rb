class CreatePages < ActiveRecord::Migration[5.1]
  def change
    create_table :pages do |t|
      t.timestamps
      t.string :name
      t.text :content
      t.string :language
    end
  end
end

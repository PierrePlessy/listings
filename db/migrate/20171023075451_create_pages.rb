class CreatePages < ActiveRecord::Migration[5.1]
  def change

    drop_table :pages

    create_table :pages do |t|
      t.string :name
      t.string :language
      t.text :content
    end
  end
end

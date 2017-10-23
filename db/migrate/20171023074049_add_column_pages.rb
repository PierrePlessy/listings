class AddColumnPages < ActiveRecord::Migration[5.1]
  def change
    add_column :pages, :name, :string
    add_column :pages, :content, :text
    add_column :pages, :language, :string
  end
end

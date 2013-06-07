class AddUrlToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :url, :string
    add_index :articles, :url, :unique => true
  end
end

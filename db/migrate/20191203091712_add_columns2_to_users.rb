class AddColumns2ToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :spotify_top_1, :string
    add_column :users, :spotify_top_2, :string
    add_column :users, :spotify_top_3, :string
    add_column :users, :spotify_top_4, :string
    add_column :users, :spotify_top_5, :string
  end
end

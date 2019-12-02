class AddEmbededPlayerToEvent < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :embeded_player, :string
  end
end

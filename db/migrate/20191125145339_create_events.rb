class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.string :description
      t.string :banner_url
      t.datetime :scheduled_at

      t.timestamps
    end
  end
end

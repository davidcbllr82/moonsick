class CreateMoments < ActiveRecord::Migration[5.2]
  def change
    create_table :moments do |t|
      t.references :user, foreign_key: true
      t.references :event, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end

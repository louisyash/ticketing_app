class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.date :event_date
      t.string :address
      t.float :longitude
      t.float :latitude
      t.references :user, null: false, foreign_key: true
      t.string :photo_url

      t.timestamps
    end
  end
end

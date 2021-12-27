class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.references :event, null: false, foreign_key: true
      t.float :price
      t.string :seat
      t.string :photo_url

      t.timestamps
    end
  end
end

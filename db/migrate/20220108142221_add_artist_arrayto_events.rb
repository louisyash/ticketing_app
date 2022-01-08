class AddArtistArraytoEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :artist, :string
    add_column :events, :description, :string
    add_column :events, :capacity, :integer
  end
end

class AddPhotostoEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :photo_url, :string
  end
end

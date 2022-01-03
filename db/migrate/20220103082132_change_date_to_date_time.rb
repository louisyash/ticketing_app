class ChangeDateToDateTime < ActiveRecord::Migration[6.0]
  def change
    remove_column :events, :event_date, :date
    add_column :events, :event_date, :datetime
  end
end

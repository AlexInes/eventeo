class FixEventsColumnNames < ActiveRecord::Migration[6.1]
  def change
    change_table :events do |t|
      t.rename :event_start_day, :event_start_date
    end
  end
end

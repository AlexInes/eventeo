class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.decimal :price
      t.date :event_start_day
      t.date :event_end_date

      t.timestamps
    end
  end
end

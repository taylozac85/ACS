class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.date :date
      t.time :time
      t.boolean :sheets
      t.boolean :washer

      t.timestamps
    end
  end
end
